class sudoers::conf ($file   = $sudoers::params::file_name,
                     $source = $sudoers::params::source_file,
                     $mode   = $sudoers::params::default_mode,

)inherits sudoers::params{

  concat {$file:
    ensure => 'present',
    mode   => $mode,
  }

  concat::fragment{'sudoers-initial':
    target => $file,
    order  => 01,
    source => $source, 
  }
}
