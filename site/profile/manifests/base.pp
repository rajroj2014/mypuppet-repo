class profile::base {
  file { '/root/README':
    ensure => file,
    content => 'This is a role readme\n',
    owner   => 'root',
  }
  package { 'screen':
    ensure => 'installed',
  }
  package { 'tree':
    ensure => 'installed',
  }
  file {'/root/README':
	ensure => file,
	content => "Welcome to ${fqdn}\n",
	}
  file {'/root/README':
	ensure => file,
	content => $timezone\n,
	}
}
