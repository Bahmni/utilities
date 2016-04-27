echo "Taking the dump on $1"
ssh root@$1 'su - postgres -c pg_dump openerp > /bahmni_temp/bahmni-openerp-base-data.sql'
echo "Copying the dump to local packages data-dump $1"
scp root@$1:/packages/data-dump/bahmni-openerp-base-data.sql packages/data-dump/