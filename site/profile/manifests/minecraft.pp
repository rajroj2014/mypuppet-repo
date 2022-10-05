class profile::minecraft {
  file { '/root/README2222':
    ensure => file,
    content => 'This is a role readme',
    owner   => 'root',
  }
