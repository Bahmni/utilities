class python_packages {
  $download_python_packages_file = "${scripts_dir}/download_python_packages.sh"

  file { "${scripts_dir}" :
    ensure => directory,
    owner   => "root",
  }

  file { "${python_package_dir}" :
    ensure => directory,
    owner  => "root"
  }

  # Commenting this out. Instead using WGET in puppet, so that we can check if the file already exists in filesystem. then don't download
  # --------------------------------------------------------------------------------------------------------------------------------------
  # file { "${download_python_packages_file}" :
  #   ensure      => present,
  #   content     => template("python_packages/download_python_packages.sh.erb"),
  #   mode        => 664,
  #   require     => File["${scripts_dir}"]
  # }

  # exec { "download_build" :
  #   command   => "sh ${download_python_packages_file} ${deployment_log_expression}",
  #   provider  => shell,
  #   user      => "root",
  #   require   => [File["$python_package_dir"], File["$download_python_packages_file"]],
  #   cwd       => "${python_package_dir}",
  #   timeout   => 0
  # }

  define wget_remote_file($remote_location){

      notice "Checking for ${title}"

      exec{"retrieve_${title}":
        command => "/usr/bin/wget --no-check-certificate ${remote_location} -O ${title}",
        creates => "${title}",
      }
  }


  wget_remote_file{"${python_package_dir}/gdata-2.0.17.tar.gz":
      remote_location => "https://gdata-python-client.googlecode.com/files/gdata-2.0.17.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/pyparsing-1.5.5.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/pyparsing/pyparsing-1.5.5.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/pycryptopp-0.6.0.1206569328141510525648634803928199668821045408958.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/pycryptopp/pycryptopp-0.6.0.1206569328141510525648634803928199668821045408958.tar.gz",
  }
  
  wget_remote_file{"${python_package_dir}/suds-0.4-py2.6.egg":
      remote_location => "https://pypi.python.org/packages/2.6/s/suds/suds-0.4-py2.6.egg",
  }

  wget_remote_file{"${python_package_dir}/MarkupSafe-0.15.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/M/MarkupSafe/MarkupSafe-0.15.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/Beaker-1.6.4.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/B/Beaker/Beaker-1.6.4.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/PyChart-1.39.tar.gz":
      remote_location => "http://download.gna.org/pychart/PyChart-1.39.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/Babel-0.9.6-py2.6.egg":
      remote_location => "http://ftp.edgewall.com/pub/babel/Babel-0.9.6-py2.6.egg",
  }

  wget_remote_file{"${python_package_dir}/docutils-0.10.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/d/docutils/docutils-0.10.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/feedparser-5.1.3.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/f/feedparser/feedparser-5.1.3.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/Jinja2-2.6.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.6.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/lxml-3.2.0.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/l/lxml/lxml-3.2.0.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/Mako-0.8.0.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/M/Mako/Mako-0.8.0.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/mock-1.0.1.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/m/mock/mock-1.0.1.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/PIL-1.1.7.tar.gz":
      remote_location => "http://effbot.org/downloads/Imaging-1.1.7.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/psutil-0.7.1.tar.gz":
      remote_location => "https://psutil.googlecode.com/files/psutil-0.7.1.tar.gz",
  }
  
  wget_remote_file{"${python_package_dir}/psycopg2-2.5.1.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/psycopg2/psycopg2-2.5.1.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/psycopg2-2.5.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/psycopg2/psycopg2-2.5.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/pydot-1.0.28.tar.gz":
      remote_location => "http://pydot.googlecode.com/files/pydot-1.0.28.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/python-dateutil-1.5.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/python-dateutil/python-dateutil-1.5.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/python-openid-2.2.5.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/python-openid/python-openid-2.2.5.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/pytz-2013.8-py2.6.egg":
      remote_location => "https://pypi.python.org/packages/2.6/p/pytz/pytz-2013.8-py2.6.egg",
  }

  wget_remote_file{"${python_package_dir}/PyWebDAV-0.9.8.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/P/PyWebDAV/PyWebDAV-0.9.8.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/PyYAML-3.10.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/reportlab-2.7.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/r/reportlab/reportlab-2.7.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/simplejson-3.2.0.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/s/simplejson/simplejson-3.2.0.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/unittest2-0.5.1.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/u/unittest2/unittest2-0.5.1.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/vatnumber-1.0.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/v/vatnumber/vatnumber-1.0.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/vobject-0.8.1c.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/v/vobject/vobject-0.8.1c.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/Werkzeug-0.8.3.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.8.3.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/xlwt-0.7.5.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/x/xlwt/xlwt-0.7.5.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/pyOpenSSL-0.13.tar.gz":
      remote_location => "https://pypi.python.org/packages/source/p/pyOpenSSL/pyOpenSSL-0.13.tar.gz",
  }

  wget_remote_file{"${python_package_dir}/nonblockingloghandler-1.1.2-py2.7.egg":
      remote_location => "https://pypi.python.org/packages/2.7/n/nonblockingloghandler/nonblockingloghandler-1.1.2-py2.7.egg",
  }

  wget_remote_file{"${python_package_dir}/num2words-0.5.1.tar.gz":
    remote_location => "https://pypi.python.org/packages/source/n/num2words/num2words-0.5.1.tar.gz",
  }

}
