define sudoers ($content = undef,
                $file    = '/etc/sudoers',
){

  concat {$file:
    ensure => 'present',
  }

  concat::fragment{'sudoers-initial':
    target => $file,
    order  => 01,
    source => "puppet:///modules/sudoers/sudoers_01.conf",
  }

  concat::fragment{"sudoers-${content}":
    target  => $file,
    order   => '20',
    content => $content,
  }

}
