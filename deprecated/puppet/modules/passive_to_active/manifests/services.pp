class passive_to_active::services{

  notice("starting applications...")

  notice("starting httpd...")
  service { "httpd":
    enable    => true,
    ensure    => running
  }

  notice("starting tomcat...")
  exec{ "start-tomcat":
    command  => "service tomcat start",
    user     => "root",
    path     => "${os_path}",
    provider => "shell"
  }

  if $bahmni_openerp_required == "true" {
    notice("starting openerp...")
    exec{ "start-openerp":
      command  => "service openerp start",
      user     => "root",
      path     => "${os_path}",
      provider => "shell"
    }
  }
}