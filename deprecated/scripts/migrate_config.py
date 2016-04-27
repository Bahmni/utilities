from os import walk
import json
import MySQLdb

CONFIG_DIR = "/var/www/bahmni_config/openmrs/apps/"

QUERY = "INSERT INTO bahmni_config (config_name, app_name, config, creator, date_created, uuid) " \
        " values ('{0}', '{1}', '{2}', 1, now(), uuid());\n"


def to_database(json_config):
    config = open(json_config, 'r').read()
    config = json.dumps(config)
    config = json.dumps(json.loads(config))
    config = MySQLdb.escape_string(config)
    json_config = json_config.replace(CONFIG_DIR, "")
    app_name, config_name = json_config.split("/")
    print QUERY.format(config_name, app_name, config)


def iterate_through_directory(dir_name):
    for (dirpath, dirnames, filenames) in walk(CONFIG_DIR + dir_name):
        json_config = filter(lambda x: x[-4:] == "json", filenames)
        json_config = map(lambda x: dirpath + "/" + x, json_config)
        map(to_database, json_config)


for (dirpath, dirnames, filenames) in walk(CONFIG_DIR):
    map(iterate_through_directory, dirnames)