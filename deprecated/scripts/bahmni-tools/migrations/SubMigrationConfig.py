class SubMigrationConfig:
    def __init__(self, sub_migration_config):
        self.name = sub_migration_config['to']
        self.path = sub_migration_config['copy']
