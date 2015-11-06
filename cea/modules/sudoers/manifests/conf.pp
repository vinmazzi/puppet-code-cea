define sudoers::conf ($content = undef,
                      $file    = $sudoers::params::file_name,
                      $type    = undef,
                      $ent     = $title,
){

  $cont = $type ? {
    'user'  =>  "${ent} ${content}",
    'group' =>  "%${ent} ${content}",
    default =>  fail('Type is not user nor group.'),
  }

  concat::fragment{"sudoers-${content}":
    target  => $file,
    content => "\n${cont}",
    order   => '99',
  }
}
