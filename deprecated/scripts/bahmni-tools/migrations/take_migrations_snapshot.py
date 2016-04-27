import json
import os
import urllib2
import shutil
import zipfile

from MigrationConfig import MigrationConfig


temp_directory_path = '/tmp/migrations'


def read_file(filename):
    return open(filename, 'r')


def get_repo_path(repo_name):
    return temp_directory_path + '/' + repo_name


def json_to_migration_config(file_handle):
    json_list = json.load(file_handle)
    return map(lambda migration_json: MigrationConfig(migration_json), json_list)


def download_repo(file_name, repo_url):
    repo_content = urllib2.urlopen(repo_url)
    file_handle = open(get_repo_path(file_name), 'w')
    file_handle.write(repo_content.read())
    file_handle.close()


def remove_and_create_directory(path):
    try:
        shutil.rmtree(path)
    except:
        pass
    create_directory(path)
    return path

def create_directory(path):
    try:
        os.makedirs(path)
    except:
        pass
    return path



def unzip_repo(repo_name):
    zip_handle = zipfile.ZipFile(repo_name)
    zip_handle.extractall(temp_directory_path)
    return zip_handle.namelist()[0]


def copy_dir(source, destination):
    print "Copying %s to %s" % (source, destination)
    if os.path.isdir(source):
        shutil.copytree(source, destination)
    else:
        shutil.copy(source, destination)



def get_snapshot_path(name):
    return os.path.dirname(os.path.realpath(__file__)) + "/" + name


def copy_sub_migrations(migration_config, source):
    temp = migration_config.destination_path
    if source.name != '':
        temp = migration_config.destination_path + '/' + source.name
    copy_dir(migration_config.source_path + source.path, temp)


def download_unzip_copy(migration_config):
    print "Operating on - " + migration_config.name
    print "\nDownloading repo"
    download_repo(migration_config.name, migration_config.repository)
    print "\nUnzipping repo"
    source_path = unzip_repo(get_repo_path(migration_config.name))
    migration_config.source_path = get_repo_path(source_path)
    migration_config.destination_path = get_snapshot_path(migration_config.name)
    print "\nCreating Directories"
    create_directory(migration_config.destination_path)
    print "\nCopying sub modules"
    map(lambda source: copy_sub_migrations(migration_config, source), migration_config.src_list)
    print "\n******** :-) :-) ********"



def flow():
    config_file = read_file('migrations_list.json')
    migration_configs = json_to_migration_config(config_file)
    remove_and_create_directory(temp_directory_path)
    map(download_unzip_copy, migration_configs)

flow()