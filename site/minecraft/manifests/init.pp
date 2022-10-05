class minecraft {
   $url = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar'
   $install_dir = '/opt/minecraft'
  file {$install_dir:
    ensure => directory,
  }
  file {"${install_dir}/minecraft_server.jar":
    ensure => file,
    source      => $url,
  }
  package {'default-jre':
    ensure => present,
  }
  package {'default-jdk':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true'
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    ##Source below means take the file from /files
    #source => 'puppet:///modules/minecraft/minecraft.service',
    #content with epp means take the file from /templated and pass the following variables to it
    content => epp('minecraft/minecraft.service', {install_dir => '/opt/minecraft'}
  }
  service { 'minecraft':
    ensure => running,
    enable => true,
  }
}
