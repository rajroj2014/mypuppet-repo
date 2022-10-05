##create a directory {
class profile::minecraft {
  file { '/root/README0':
    ensure => file,
    content => 'This is a role readme',
    owner   => 'root',
  }
