# user related bits go here

class default::users {

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

user {'arkitect':
  ensure     => absent,
  managehome => true,
}

user {'kthoutam':
  ensure     => absent,
  managehome => true,
}
}
