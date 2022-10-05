class profile::minecraft {
 file { '/root/minecraft':
    ensure => 'directory',
    owner  => 'root',
    group  => 'wheel',
    mode   => '0750',
  }
}
