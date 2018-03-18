# user related bits go here

class default::users {

group {'arkitectpro':
  ensure => present,
  gid    => 1111,
}

user { 'arkitectpro':
  ensure     => present,
  uid        => 1111,
  gid        => 1111,
  home       => '/home/arkitectpro',
  expiry     => absent,
  managehome => true,
  password   => '$1$zZk1WfZr$5DePUa5mMPADKSns2bYaV0',
  subscribe  => Group['arkitectpro'],
}

}
