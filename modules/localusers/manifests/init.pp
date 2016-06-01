class localusers {
	user { 'admin':
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/admin',
		gid		=> 'wheel',
		managehome	=> true,	
		password	=> '$6$LVi0v/5K$dNu8IW/G7BAzK.MK18FHQ.wlmfAGaHy5Ir0K0YZXc9VNyfnw2Zi1NZgXCfGq8fD3DJuXiBUI4g37xrZvxfEvJ1'
	}
	user { 'jeff':
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/jeff',
		groups		=> ['wheel', 'finance'],
		password	=> '$6$LVi0v/5K$dNu8IW/G7BAzK.MK18FHQ.wlmfAGaHy5Ir0K0YZXc9VNyfnw2Zi1NZgXCfGq8fD3DJuXiBUI4g37xrZvxfEvJ1',
		managehome	=> true
	}
}

#class profiles::users_management {

#        group   { 'wheel':
#       ensure  => 'present',
#        tag     => 'wheel',
#}


 #       group   { 'mbda':
 #       ensure  => 'present',
 #       tag     => 'mbda',
#}


 # user { 'sutch':
 #       comment    => 'Dennis Sutch',
 #       home       => "/home/sutch",
 #       shell      => '/bin/bash',
 #       uid        => '513',
 #       gid        => '513',
 #       managehome => true,
 #       password   => '$1$SOU57gVz$JcAsao7GkUYCnPvXfPOGV/',
 #       groups     => 'sutch',
##    require    => Group['Admin']
 # }
  #      group { 'sutch':
    #    gid     => '513'
   #  }

##########  FOR SETTING SSH-KEY, USE THE BELOW FIELD  ##########

#       if $sshkeytype != '' {
#       ssh_authorized_key{ $username:
#       ensure  => present,
#      user    => $username,
#      type    => $sshkeytype,
#      key     => $sshkey,
#      name    => $username,
#      require => User[$title],
#    }

