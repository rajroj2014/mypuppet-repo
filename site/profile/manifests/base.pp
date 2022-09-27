class profile::base {
  file { '/root/README':
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
}
