from SubMigrationConfig import SubMigrationConfig
class MigrationConfig:
    def __init__(self, migration_json):
        self.name = migration_json['create']
        self.repository = migration_json['download']
        self.src_list = map(lambda sub_migration: SubMigrationConfig(sub_migration),migration_json['then'])
        self.destination_path = ""
        self.source_path = ""