define sudoers::conf ($content = undef,
                      $file    = $sudoers::params::file_name,
){
  concat::fragment{"sudoers-${content}":
    target  => $file,
    content => "\n${content}",
    order   => '99',
  }
}
