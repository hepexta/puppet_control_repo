node default {
  file {'/root/README':
    ensure => file,
    conetnt => 'This is a readme'
  }
}
