class identifier_cron {

    cron { "reset_identifier_sequence_yearly" :
        command 	=> "/usr/bin/mysql -u${openmrs_database_user} -p${openmrs_database_password} openmrs -e \"update idgen_seq_id_gen set next_sequence_value=1,suffix=concat('/',(SELECT DATE_FORMAT(now(),'\\%y')));\"",
        user      	=> "${bahmni_user}",
        hour        => 0,
        minute      => 0,
        month       => 1,
        monthday    => 1
    }
}