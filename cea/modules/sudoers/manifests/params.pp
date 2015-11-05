class sudoers::params {

 $file_name    = '/etc/sudoers'
 $source_file  = 'puppet:///modules/sudoers/sudoers_01.conf'
 $default_mode = '0440'

}
