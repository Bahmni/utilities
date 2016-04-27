class selinux {


  if ($selinux == "true") {
    selboolean { 'httpd_read_user_content':
      name       => 'httpd_read_user_content',
      persistent => true,
      value      => on
    }

    selboolean { 'httpd_can_network_relay':
      name       => 'httpd_can_network_relay',
      persistent => true,
      value      => on
    }

    file { "/tmp/bahmni_nagios_plugins.te" :
      content => template("selinux/bahmni_nagios_plugins.te"),
      ensure  => present
    }

    exec { "compile_bahmni_selinux_module":
      command => "/usr/bin/checkmodule -M -m -o /tmp/bahmni_nagios_plugins.mod /tmp/bahmni_nagios_plugins.te",
      user    => "root",
      path    => "/tmp",
      require => File["/tmp/bahmni_nagios_plugins.te"]
    }

    exec { "create_bahmni_policy_package":
      command => "/usr/bin/semodule_package -o /tmp/bahmni_nagios_plugins.pp -m /tmp/bahmni_nagios_plugins.mod",
      user    => "root",
      path    => "/tmp",
      require => Exec["compile_bahmni_selinux_module"]
    }

    exec { "install_bahmni_policy_package":
      command => "/usr/sbin/semodule -i /tmp/bahmni_nagios_plugins.pp",
      user    => "root",
      path    => "/tmp",
      require => Exec["create_bahmni_policy_package"]
    }
  }

}