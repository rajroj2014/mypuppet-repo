class profile::minecraft {
 file { '/opt/minecraft':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
  }
}
