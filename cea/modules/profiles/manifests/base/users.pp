class profiles::base::users {
  
  $admin_users = hiera_hash('admin_users') 
  $admin_group = hiera('admin_group')
  
  group {$admin_group:
    ensure => 'present',
  }

  create_resources(user_key,$admin_users)
  
  resources {'user':
    purge => true,
  }
}
