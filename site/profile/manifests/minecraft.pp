##create a directory {
class profile::minecraft
    file { '/opt/minecraft':
        ensure => 'directory',
        owner  => 'root',
        group  => 'wheel',
        mode   => '0750',
      }
}
