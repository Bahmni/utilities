class bahmni_revisions {
  include  httpd

  file {"${bahmniRevisionsDirectory}" :
    ensure      => directory,
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 755
  }

  exec { "copy_bahmni_revision_files" :
    command     => "cp ${build_output_dir}/bahmni_*_revision.txt ${bahmniRevisionsDirectory}",
    path        => "${os_path}",
    require     => [File["${bahmniRevisionsDirectory}"]]
  }
}
