#Apache as proxy server
import "httpd-default-configuration"
$httpProxyRedirects = [{path => "/artifactory", redirectPath => "http://localhost:8081/artifactory"}]

#client configuration
$artifactory_server_base_url="http://bahmnirepo.thoughtworks.com/artifactory"
$maven_user="go"
$m2_folder="/var/go/.m2" # Expand users ~/.m2