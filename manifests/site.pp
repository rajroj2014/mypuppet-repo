node /^slave/ {
  file {'/root/README':
    ensure => file,
    content => 'This is meeeeeeeeeeeeeeeeeeeeeeeeeee me me me',
    }
}
