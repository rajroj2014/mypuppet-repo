class profile::base {
  file { '/root/README0':
    ensure => file,
    content => 'This is a role readme',
    owner   => 'root',
  }
  package { 'screen':
    ensure => 'installed',
  }
  package { 'tree':
    ensure => 'installed',
  }
  file {'/root/README1':
	ensure => file,
	content => "Welcome to ${fqdn}\n",
	}
  file {'/root/README2':
	ensure => file,
	content => $timezone,
	}
  file {‘/opt/minecraft’:
    ensure => directory,
  }
}
