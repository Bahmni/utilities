import "configurations/node-configuration"
import "configurations/stack-installers-configuration"
import "configurations/stack-runtime-configuration"
import "configurations/deployment-configuration"
import "configurations/openmrs-versions-configuration.pp"

node default {
    if $implementation_name {
        class { "bahmni": } -> class { "implementation_config" : }
    } else {
        warning("implementation_name not set! not deploying implementation config")
        class { "bahmni": }
    }
}