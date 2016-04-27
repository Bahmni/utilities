* Clone this repo on both master and slave

* On Master
 	* Update the stack-runtime-configuration.pp file with both master and slave information
		* Change value of $postgresMachine to 'master'
	* Run the puppet using provision.pp
	* This will output tar file : /tmp/pg_master_db_file_backup.tar

* On slave
	* Copy the tar file to slave: scp root@master-host:/tmp/pg_master_db_file_backup.tar /tmp
 	* Update the stack-runtime-configuration.pp file with both master and slave information
		* Change value of @postgresMachine to 'slave'
	* Run the puppet using provision.pp
