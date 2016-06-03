from subprocess import Popen, PIPE, STDOUT

import json
import os
import urllib
import yum

if os.geteuid() != 0:
    print "You need to have root privileges to run this script. Exiting."
    exit(-1)

if yum.YumBase().rpmdb.searchNevra(name='bahmni-endtb-batch'):
    print "Removing previous install..."
    Popen("yum remove -y bahmni-endtb-batch", shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)

try:
    SNAP_API_KEY = os.environ["SNAP_API_KEY"]
except KeyError:
    print "Please set SNAP_API_KEY env variable with the API key"
    exit(-1)

print "Fetching pipeline info..."
cmd = "curl -s -u rahul080327:%s -X GET -H 'Accept: application/vnd.snap-ci.com.v1+json' https://api.snap-ci.com/project/Bahmni/bahmni-endtb-batch/branch/master/pipelines" % SNAP_API_KEY
p = Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)
output = p.stdout.read()

info = json.loads(output)

print "Parsing pipeline info..."
for pipeline in info["_embedded"]["pipelines"]:
    if pipeline["result"] == "passed" and pipeline["stages"][-1]["result"] == "passed":
        stage = pipeline["stages"][-1]

        if stage["workers"][-1]["result"] == "passed":
            url = stage["workers"][-1]["artifacts"][0]["download_url"]
            artifact_name = url.split("/")[-1]

            print "Fetching download info..."
            cmd = "curl -s -u rahul080327:%s -X GET -H 'Accept: application/vnd.snap-ci.com.v1+json' %s" % (SNAP_API_KEY, url)
            p = Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)
            output = p.stdout.read()

            info = json.loads(output)

            print "Downloading %s..." % artifact_name
            file = urllib.URLopener()
            file.retrieve(info["_links"]["redirect"]["href"], artifact_name)
            print "Complete."

            print "Installing..."
            Popen("yum localinstall -y %s" % artifact_name, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT, close_fds=True)
        break
