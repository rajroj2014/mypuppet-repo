node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a default readme',
    owner   => 'root',
  }
}

node 'pslave' {
    include role::pslave
}
