class phantom_jasmine{
    exec {"phantomjs-download-archive" :
                command     => "/usr/bin/wget -O /usr/local/phantomjs.tar.bz2 http://phantomjs.googlecode.com/files/phantomjs-1.8.1-linux-x86_64.tar.bz2",
                timeout     => 0,
                provider    => "shell",
    }

    exec { "phantomjs-archive-extract":
                command     => "tar --use-compress-program bzip2 -xvf /usr/local/phantomjs.tar.bz2",
                path        => ["/usr/local"],
                user        => "${bahmni_user}",
                require     => Exec["phantomjs-download-archive"],
    }

    file{"phantomjs-archive-delete":
                path        => "/usr/local/phantomjs.tar.bz2",
                ensure      => absent,
                require     => Exec["phantomjs-archive-extract"]
    }

    exec{"phantomjs-add-to-path":
                command     => "",
                require     => File["phantomjs-archive-delete"]
    }

    exec{"node-download-archive":
                command     =>"/usr/bin/wget -O /tmp/nodejs.rpm http://nodejs.tchol.org/repocfg/el/nodejs-stable-release.noarch.rpm",
                timeout     => 0,
                provider    => "shell",
                require     =>Exec["phantomjs-add-to-path"]
    }

    exec{"node-install":
                command     =>"yum localinstall --nogpgcheck /tmp/nodejs.rpm",
                provider    => "shell",
                require     =>Exec["node-download-archive"]
    }

   exec{"npm-install":
                command     =>"yum install nodejs-compat-symlinks npm",
                provider    => "shell",
                require     =>Exec["node-install"]
    }

    file{"rpm-stable-release-delete":
                path        => "/tmp/nodejs.rpm",
                ensure      => absent,
                require     => Exec["npm-install"]
    }

   exec{"phantom-jasmine-install":
                command     =>"sudo npm install phantom-jasmine -g",
                provider    => "shell",
                require     =>Exec["rpm-stable-release-delete"]
    }
}