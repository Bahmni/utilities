import "configurations/node-configuration"
import "configurations/openmrs-versions-configuration.pp"
import "configurations/stack-installers-configuration.pp"
import "configurations/stack-runtime-configuration.pp"
import "configurations/deployment-configuration.pp"

node default {
  include bahmni_artifacts
}