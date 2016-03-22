import argparse
import os
import pygit2
import shutil

from xml.dom.minidom import parse
from termcolor import colored


parser = argparse.ArgumentParser(
    description="Automatically update openmrs versions across the core bahmni repos")
parser.add_argument("-v", "--version",
                    help="The new OpenMRS version", type=str)
args = parser.parse_args()

if not args.version:
    print colored("No OpenMRS version provided", 'red')
    exit(-1)

openMRS_version = args.version

repos = {
    "bahmni-core": {
        "url": "https://github.com/Bahmni/bahmni-core",
        "path": "pom.xml",
        "type": "pom"
    },
    "openmrs-distro-bahmni": {
        "url": "https://github.com/Bahmni/openmrs-distro-bahmni",
        "path": "distro/pom.xml",
        "type": "pom"
    },
    "bahmni-package": {
        "url": "https://github.com/Bahmni/bahmni-package",
        "path": "gradle.properties",
        "type": "gradle"
    }
}

directory = "/tmp/.update_openmrs"
if os.path.exists(directory):
    shutil.rmtree(directory, ignore_errors=True)
os.makedirs(directory)

changed_dirs = []

if os.path.exists("patches"):
    shutil.rmtree("patches", ignore_errors=True)
os.makedirs("patches")

for repo in repos.keys():
    print colored("Cloning %s..." % repo, 'yellow')

    attrs = repos[repo]
    repodir = os.path.join(directory, repo)
    pygit2.clone_repository(repos[repo]["url"], repodir)

    print colored("Patching %s..." % repo, 'yellow')

    attrs['path'] = os.path.join(repodir, attrs['path'])

    if attrs["type"] == "pom":
        doc = parse(attrs["path"])
        elements = doc.getElementsByTagName('openMRSVersion')

        for element in elements:
            element.firstChild.replaceWholeText(openMRS_version)

        with open(attrs["path"], "w") as xml_file:
            xml_file.write(doc.toxml())
    else:
        with open(attrs["path"]) as prop_file:
            lines = prop_file.readlines()

        with open(attrs["path"], 'w') as prop_file:
            for line in lines:
                if "openmrsVersion=" in line:
                    chunks = line.split('=')
                    line = "%s=%s%s" % (chunks[0], openMRS_version, os.linesep)
                prop_file.write(line)
    print colored("Done", 'yellow')

    with open("patches/%s.patch" % repo, 'w') as patch_file:
        patch = pygit2.Repository(repodir).diff().patch

        if not patch:
            print colored("Already patched, ignoring.", 'green')
            continue

        patch_file.write(pygit2.Repository(repodir).diff().patch)
        print colored("Wrote patch file: %s.patch" % repo, 'yellow')

print colored("Cleaning up.", 'yellow')
shutil.rmtree(directory, ignore_errors=True)
