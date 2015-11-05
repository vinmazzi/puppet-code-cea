class profiles::base::teste_app {

  user {'teste-app':
    ensure => 'present',
  } 

  sudoers {'teste-app'
    content => "teste-app ALL = (ALL) NOPASSWD: ALL",
  }
}
