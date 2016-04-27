class users ( $userName, $password_hash ) {
  require host

  user { "${userName}" :
    ensure      => present,
    shell       => "/bin/bash",
    home        => "/home/${userName}",
    password    => "${password_hash}"
  }

  exec { "${userName} homedir" :
    provider    => "shell",
    command     => "cp -R /etc/skel /home/$userName; chown -R $userName:$userName /home/$userName;chmod g+rwx -R /home/$userName",
    creates     => "/home/$userName",
    onlyif      => "test ! -f /home/${userName}/.bashrc",
    require     => User["${userName}"]
  }

  file { "add-user-to-sudoers" :
    ensure      => present,
    path        => "/home/${userName}/add-user-to-sudoers.sh",
    content     => template("users/add-user-to-sudoers.sh"),
    owner       => "${userName}",
    group       => "${userName}",
    mode        => 764,
    require     => Exec["${userName} homedir"]
  }

  exec { "add-user-to-sudoers" :
    provider    => "shell",
    command     => "sh /home/${userName}/add-user-to-sudoers.sh ${userName}",
    onlyif      => "test `grep -i ${userName} /etc/sudoers  | wc -l` -eq 0",
    require     => File["add-user-to-sudoers"]
  }
}