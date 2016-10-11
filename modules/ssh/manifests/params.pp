class ssh::params {
	
	case $::osfamily {
		'RedHat': { $ssh_name = 'sshd' }
		'Debian': { $ssh_name = 'ssh' }
		'Fedora': { $ssh_name = 'sshd' }
		default: { fail('OS not supported by puppet modules SSH') }
	}		
}
