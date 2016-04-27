class bahmni_jasperreports {

	$properties_file = "reports_${reports_environment}.properties"
	
	exec { "delete_reports_dir" :
		command => "rm -rf ${build_output_dir}/${implementation_name}-reports",
		path 		=> "${os_path}"
	}

	file { "delete_reports_zip" :
	    path      => "${build_output_dir}/${implementation_name}-reports.zip",
	    ensure    => absent,
	    force     => true,
	}

    exec { "download_reports_zip":
        command => "/usr/bin/wget --no-check-certificate ${report_zip_source_url} -O ${implementation_name}-reports.zip",
        cwd     => "${build_output_dir}",
        require => [Exec["delete_reports_dir"], File["delete_reports_zip"]],
        timeout => 0
    }

	exec { "unzip_report" :
	    command   => "unzip -q -o ${implementation_name}-reports.zip -d ${build_output_dir}/${implementation_name}-reports ${deployment_log_expression}",
	    provider  => shell,
	    path      => "${os_path}",
	    cwd       => "${build_output_dir}",
	    require   => Exec["download_reports_zip"]
	  }

	exec { "change-reports-name":
    	command => "mv *-master ${implementation_name}-reports-master",
    	path      => "${os_path}",
    	provider  => shell,
    	cwd     => "${build_output_dir}/${implementation_name}-reports",
    	require => Exec["unzip_report"]
    }

    exec { "bahmni-jasperserver-deploy-reports" :
        provider => "shell",
    	command => "scripts/deploy.sh -j $jasperHome -p conf/${properties_file} ${deployment_log_expression}",
    	path    => "${os_path}",
        cwd     => "${build_output_dir}/${implementation_name}-reports/${implementation_name}-reports-master",
        require => Exec["change-reports-name"]
    }

	exec { "bahmni-jasperserver-deploy-customserver" :
    	provider => "shell",
		command => "scripts/deployCustomJasperServer.sh $jasperHome ${deployment_log_expression}",
		path    => "${os_path}",
    	cwd     => "${build_output_dir}/${implementation_name}-reports/${implementation_name}-reports-master",
    	onlyif  => "test -f scripts/deployCustomJasperServer.sh",
    	require => Exec["bahmni-jasperserver-deploy-reports"]
	}
}