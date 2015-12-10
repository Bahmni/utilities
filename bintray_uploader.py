#!/usr/bin/python
# -*- coding: utf-8 -*-

import re
import sys
from os import linesep, listdir, environ, system
from os.path import isfile, join

if len(sys.argv) != 2:
    sys.stderr.write("Usage: %s <rpm_directory>%s" % (sys.argv[0], linesep))
    exit(1)

rpm_dir = sys.argv[1]
file_names = [join(rpm_dir, file) for file in listdir(rpm_dir) if isfile(join(rpm_dir, file))]
BINTRAY_API_KEY = environ['BINTRAY_API_KEY']
curl_template = "curl -T %s -ubahmni:%s https://api.bintray.com/content/bahmni/rpm/%s/%s/%s"
pattern = re.compile(r'(.*/)*(.*)-(.*)-(.*?)\.(.*)(\.rpm)')

for file_name in file_names:
    match = re.search(pattern, file_name)

    if match:
        (path, name, version, release, platform, _) = match.groups()
        path = path or ''
        verrel = version + '-' + release
        print "Uploading %s..." % file_name
        system(curl_template % (file_name, BINTRAY_API_KEY, name, verrel, file_name))
        print "Completed."
