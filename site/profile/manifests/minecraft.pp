class profile::minecraft {
 file { '/root/minecraft':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
  }
}
