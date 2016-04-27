class node_npm{

	exec {"remove-existing-npm":
        command    => "rm -f /usr/bin/npm",
        provider   => "shell",
        onlyif     => "test -f /usr/bin/npm"
    }

	exec {"nodejs-download-archive":
        command     => "/usr/bin/wget -O /opt/node-v0.10.28.tar.gz http://nodejs.org/dist/v0.10.28/node-v0.10.28.tar.gz",
        timeout     => 0,
        provider    => "shell",
        creates     => "/opt/node-v0.10.28.tar.gz",
        require		=> File["remove-existing-npm"]
    }

    exec { "nodejs-archive-extract":
        cwd         => "/opt",
        command     => "/bin/tar xzf /opt/node-v0.10.28.tar.gz",
        path        => ["/bin"],
        creates     => "/opt/node-v0.10.28",
        require     => Exec["nodejs-download-archive"]
    }

    file{"nodejs-archive-delete":
        path        => "/opt/node-v0.10.28.tar.gz",
        ensure      => absent,
        require     => Exec["nodejs-archive-extract"]
    }

    exec{"configure-nodejs":
    	path	    => ["/usr/bin/", "/opt/node-v0.10.28/"],
        cwd         => "/opt/node-v0.10.28/", 
    	command		=> "configure",
    	require		=> Exec["nodejs-archive-extract"]
    }

	exec{"make-nodejs":
    	cwd	        => "/opt/node-v0.10.28/",
    	command		=> "/usr/bin/make",
        timeout     => 0,
    	require		=> Exec["configure-nodejs"]
    }

    exec{"make-install-nodejs":
    	cwd	    => "/opt/node-v0.10.28/",
    	command		=> "/usr/bin/make install",
    	require		=> Exec["make-nodejs"]
    }

    file { '/usr/bin/npm':
        ensure => 'link',
        target => '/usr/local/lib/node_modules/npm/bin/npm-cli.js',
        require => Exec["make-install-nodejs"]
    }

}