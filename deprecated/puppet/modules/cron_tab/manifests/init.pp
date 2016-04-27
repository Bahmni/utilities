class cron_tab {

    package { "cronie" :
        ensure  => present
    }
}