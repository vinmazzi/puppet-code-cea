class teste {
$filename = hiera('classes')
	file {"/tmp/${filename}":
		ensure => 'file',
	} 
}
