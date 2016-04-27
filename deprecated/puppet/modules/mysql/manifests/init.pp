class mysql-common {

	notice("mysql-common manifest processing...")

	package { "MySQL-shared-compat" :
		ensure  => present
	}

	package { "MySQL-shared" :
		ensure  => present
	}	
}

class mysql {
	#require yum_repo
	require mysql-common

	notice("mysql manifest processing...")

	package { "MySQL-client" :
		ensure  => present
	}
}

class mysqlserver {
	#require yum_repo
	require mysql-common
	
	notice("mysqlserver manifest processing...")

	package { "MySQL-server" :
		ensure  => present
	}
	
	file { "/etc/my.cnf" :
		ensure      => present,
		content     => template("mysql/my.cnf"),
		require     => Package["MySQL-server"],
	}
	
	file { "/tmp/changepassword.sql" :
		ensure      => present,
		content     => template("mysql/changepassword.sql.erb"),
	}

	file { "/tmp/grantAccess.sql" :
		ensure      => present,
		content     => template("mysql/grantAccess.sql.erb"),
	}

	file { "/tmp/initdb.sh" :
		ensure      => present,
		content     => template("mysql/initdb.sh.erb"),
	}

	service { "mysql" :
		ensure => running,
		enable => true,
		require => File["/etc/my.cnf"],
	}

	exec {"changepassword" : 
		command		=> "sh /tmp/initdb.sh ${mysqlRootPassword} ${deployment_log_expression}",
	    provider  	=> shell,
    	user      	=> "root",
    	require 	=> [File["/tmp/changepassword.sql"], File["/tmp/grantAccess.sql"], File["/tmp/initdb.sh"], Service["mysql"]],
	}
}