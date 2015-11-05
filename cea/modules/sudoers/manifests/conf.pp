define sudoers::conf ($content = undef,
                      $file    = $sudoers::params::file_name,
){
  concat::fragment{"sudoers-${content}":
    target  => $file,
    order   => '20',
    content => $content,
  }
}
