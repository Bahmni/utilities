import "configurations/node-configuration"
import "configurations/artifactory-configuration"

node default {
  include httpd
  include artifactory
}