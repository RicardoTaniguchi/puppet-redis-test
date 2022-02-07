exec { 'apt-update':
	command => '/usr/bin/apt-get update'
     }
package { 'redis-server':
	require => Exec['apt-update'],
	ensure => installed,
	}
exec { 'systemctl redis-server start':
 	path  => '/usr/bin:/usr/sbin:/bin',
	command => '/bin/systemctl'
     }
service { 'redis-server':
	ensure => running,
	}
