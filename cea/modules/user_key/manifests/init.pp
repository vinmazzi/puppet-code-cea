define user_key ($user_name = $title, $groups = 'users', $rsa_key = undef, $type = 'ssh-rsa'){

        group{"group-${user_name}":
          ensure => 'present',
          name   => $user_name,
        }

        ->

        user{"usuario-${user_name}":
          ensure => 'present',
          name   => $user_name,
          home   => "/home/${user_name}",
          gid    => $user_name,
          groups => $groups,
        }

        ->

        file{["/home/${user_name}","/home/${user_name}/.ssh"]:
           ensure => 'directory',
           owner  => $user_name,
           group  => 'users',
        }

        ->

        ssh_authorized_key{"ssh-${user_name}":
           user => $user_name,
           type => $type,
           key  => $rsa_key,
        }

        resources {'user':
          purge => 'true',
        }
}
