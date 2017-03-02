notice('MODULAR: cinder_user.pp')

group {'cinder':
  ensure => present,
  gid    => 211,
  system => true,
} ->
user {'cinder':
  ensure     => present,
  gid        => 211,
  uid        => 211,
  home       => '/var/lib/cinder',
  managehome => true,
  system     => true,
  shell      => '/bin/bash',
}
