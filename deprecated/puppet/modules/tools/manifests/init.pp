class tools {
  require yum_repo
  
  package {"unzip" : ensure => "installed"}
  package {"zip" : ensure => "installed"}
  package {"wget" : ensure => "installed"}
}