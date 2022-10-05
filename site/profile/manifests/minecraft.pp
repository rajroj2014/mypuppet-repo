##create a directory 
file { '/opt/minecraft':
    ensure => 'directory',
    owner  => 'root',
    group  => 'wheel',
    mode   => '0750',
  }
