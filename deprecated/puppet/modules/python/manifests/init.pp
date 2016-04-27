class python {
  require host
  require python_packages

  notify { "Setting up python platform" :}

  $python_temp_dir = "${temp_dir}/python"
  $log_file = "${logs_dir}/python.log"
  $log_expression = ">> ${log_file} 2>> ${log_file}"

  file { "${log_file}" : ensure => absent, purge => true}
  file { "${python_temp_dir}" : ensure => directory, mode => 744}

	package { "epel-release" :
    provider => rpm,
    ensure => installed,
    source => "http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm"
 	}

	package { "pgdg-centos92-9.2-6.noarch" :
    provider => yum,
    ensure => installed,
    require => Package["epel-release"]
 	}

  package { "python-psycopg2" : ensure => installed, require => Package["pgdg-centos92-9.2-6.noarch"] }
  package { "python-lxml" : ensure => installed, require => Package["python-psycopg2"] }
  package { "PyXML" : ensure => installed, require => Package["python-lxml"] }
  package { "libxslt-python" : ensure => installed, require => Package["python-setuptools"] }
  package { "pytz" : ensure => installed, require => Package["libxslt-python"] }
  package { "python-matplotlib" : ensure => installed, require => Package["pytz"] }
  package { "python-babel" : ensure => installed, require => Package["python-matplotlib"] }
  package { "python-mako" : ensure => installed, require => Package["python-babel"] }
  package { "python-dateutil" : ensure => installed, require => Package["python-mako"] }
  package { "pychart" : ensure => installed, require => Package["python-dateutil"] }
  package { "pydot" : ensure => installed, require => Package["pychart"] }
  package { "python-reportlab" : ensure => installed, require => Package["pydot"] }
  package { "python-devel" : ensure => installed, require => Package["python-reportlab"] }
  package { "python-imaging" : ensure => installed, require => Package["python-devel"] }
  package { "python-vobject" : ensure => installed, require => Package["python-imaging"] }
  package { "hippo-canvas-python" : ensure => installed, require => Package["python-vobject"] }
  package { "mx" : ensure => installed, require => Package["hippo-canvas-python"] }
  package { "python-gdata" : ensure => installed, require => Package["mx"] }
  package { "python-ldap" : ensure => installed, require => Package["python-gdata"] }
  package { "python-openid" : ensure => installed, require => Package["python-ldap"] }
  package { "python-werkzeug" : ensure => installed, require => Package["python-openid"] }
  package { "python-vatnumber" : ensure => installed, require => Package["python-werkzeug"] }
  package { "pygtk2" : ensure => installed, require => Package["python-vatnumber"] }
  package { "glade3" : ensure => installed, require => Package["pygtk2"] }
  package { "python" : ensure => installed, require => Package["glade3"] }
  package { "python-psutil" : ensure => installed, require => Package["python"] }
  package { "python-docutils" : ensure => installed, require => Package["python-psutil"] }
  package { "make" : ensure => installed, require => Package["python-docutils"] }
  package { "automake" : ensure => installed, require => Package["make"] }
  package { "gcc" : ensure => installed, require => Package["automake"] }
  package { "gcc-c++" : ensure => installed, require => Package["gcc"] }
  package { "kernel-devel" : ensure => installed, require => Package["gcc-c++"] }
  package { "byacc" : ensure => installed, require => Package["kernel-devel"] }
  # Cannot find the package, not sure whether this is mandatory
  # package { "flashplugin-nonfree" : ensure => installed, require => Package["byacc"] }
  package { "poppler-utils" : ensure => installed, require => Package["byacc"] }
  package { "pywebdav" : ensure => installed, require => Package["poppler-utils"] }
  package { "libpng" : ensure => installed, require => Package["poppler-utils"]}
  package { "libpng-devel" : ensure => installed, require => Package["libpng"]}
  package { "libjpeg-turbo" : ensure => installed, require => Package["poppler-utils"]}
  package { "libjpeg-turbo-devel" : ensure => installed, require => Package["libjpeg-turbo"]}

  file { "${python_temp_dir}/install-python-package-from-zip.sh" :
    content => template("python/install-python-package-from-zip.erb"),
    ensure => present,
    mode => 554
  }

  file { "${python_temp_dir}/install-python-package-from-egg.sh" :
    content => template("python/install-python-package-from-egg.erb"),
    ensure => present,
    mode => 554
  }

  file { "${python_temp_dir}/install-python-package-from-gzip.sh" :
    content => template("python/install-python-package-from-gzip.erb"),
    ensure => present,
    mode => 554
  }

  exec { "gdata" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} gdata-2.0.17.tar gdata ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => [File["${python_temp_dir}/install-python-package-from-gzip.sh"], Package["pywebdav"]]
  }

  exec { "pyparsing" :
    command => "sh install-python-package-from-egg.sh ${python_package_dir} pyparsing ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => [File["${python_temp_dir}/install-python-package-from-egg.sh"], Exec["gdata"]]
  }

  exec { "pycryptopp" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} pycryptopp-0.6.0.1206569328141510525648634803928199668821045408958.tar pycryptopp ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["pyparsing"]
  }

  exec { "suds" :
    command => "sh install-python-package-from-egg.sh ${python_package_dir} suds ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => [Exec["pycryptopp"], File["${python_temp_dir}/install-python-package-from-egg.sh"]]
  }

  exec { "MarkupSafe" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} MarkupSafe-0.15.tar MarkupSafe ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["suds"]
  }

  exec { "Beaker" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} Beaker-1.6.4.tar Beaker ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["MarkupSafe"]
  }

  exec { "PyChart" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} PyChart-1.39.tar PyChart ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["Beaker"]
  }

  exec { "babel" :
    command => "sh install-python-package-from-egg.sh ${python_package_dir} babel ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["PyChart"]
  }

  exec { "docutils" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} docutils-0.10.tar docutils ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["babel"]
  }

  exec { "feedparser" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} feedparser-5.1.3.tar feedparser ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["docutils"]
  }

  exec { "Jinja2" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} Jinja2-2.6.tar Jinja2 ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["feedparser"]
  }

  exec { "lxml" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} lxml-3.2.0.tar lxml ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["Jinja2"]
  }

  exec { "Mako" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} Mako-0.8.0.tar Mako ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["lxml"]
  }

  exec { "mock" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} mock-1.0.1.tar mock ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["Mako"]
  }

  exec { "PIL" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} PIL-1.1.7.tar PIL ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["mock"]
  }

  exec { "psutil" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} psutil-0.7.1.tar psutil ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["PIL"]
  }

  exec { "psycopg2" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} psycopg2-2.5.tar psycopg2 ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["psutil"]
  }

  exec { "pydot" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} pydot-1.0.28.tar pydot ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["psycopg2"]
  }

  exec { "python-dateutil" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} python-dateutil-1.5.tar python-dateutil ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["pydot"]
  }

  exec { "python-openid" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} python-openid-2.2.5.tar python-openid ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["python-dateutil"]
  }

  exec { "pytz" :
    command => "sh install-python-package-from-egg.sh ${python_package_dir} pytz ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["python-openid"]
  }

  exec { "PyWebDAV" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} PyWebDAV-0.9.8.tar PyWebDAV ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["pytz"]
  }

  exec { "PyYAML" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} PyYAML-3.10.tar PyYAML ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["PyWebDAV"]
  }

  exec { "reportlab" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} reportlab-2.7.tar reportlab ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["PyYAML"]
  }

  exec { "simplejson" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} simplejson-3.2.0.tar simplejson ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["reportlab"]
  }

  exec { "unittest2" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} unittest2-0.5.1.tar unittest2 ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["simplejson"]
  }

  exec { "vatnumber" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} vatnumber-1.0.tar vatnumber ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["unittest2"]
  }

  exec { "vobject" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} vobject-0.8.1c.tar vobject ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["vatnumber"]
  }

  exec { "Werkzeug" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} Werkzeug-0.8.3.tar Werkzeug ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["vobject"]
  }

  exec { "xlwt" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} xlwt-0.7.5.tar xlwt ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["Werkzeug"]
  }

  exec { "pyOpenSSL" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} pyOpenSSL-0.13.tar pyOpenSSL ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["xlwt"]
  }

  exec { "num2words" :
    command => "sh install-python-package-from-gzip.sh ${python_package_dir} num2words-0.5.1.tar num2words ${log_expression}",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["xlwt"]
  }


exec { "nonblockingloghandler" :
    command => "easy_install nonblockingloghandler",
    path => "${os_path}",
    cwd => "${python_temp_dir}",
    require => Exec["pyOpenSSL"]
  }
}
