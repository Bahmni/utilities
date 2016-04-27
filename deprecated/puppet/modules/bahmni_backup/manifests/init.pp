class bahmni_backup {
    exec { "create_patient_images_dir_on_secondary_machine":
        command => "ssh root@${passive_machine_ip} 'mkdir -p ${patientImagesDirectory}'",
        path        => "${os_path}",
    }

    #--delete option is taken out from rsync intentionally. As slave folder acts as backup.
    cron { "sync_patient_image_cron" :
        command => "rsync -rh --progress -i --itemize-changes --update --chmod=Du=r,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p ${patientImagesDirectory} -e ssh root@${passive_machine_ip}:${patientImagesDirectory}/../",
        user    => "root",
        minute  => "*/1"
    }

    exec { "create_document_images_dir_on_secondary_machine":
        command => "ssh root@${passive_machine_ip} 'mkdir -p ${documentBaseDirectory}'",
        path        => "${os_path}",
    }

	cron { "sync_document_image_cron" :
		command => "rsync -rh --progress -i --itemize-changes --update --delete --chmod=Du=r,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p ${documentBaseDirectory} -e ssh root@${passive_machine_ip}:${documentBaseDirectory}/../",
		user    => "root",
		minute  => "*/1"
	}
}