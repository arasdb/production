#Trying basic bits here

class java::install {

package { ['java-1.7.0-openjdk']:}

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

user {'arkitect':
  ensure     => absent,
  managehome => true,
}

user {'kthoutam':
  ensure     => absent,
  managehome => true,
}

package {['tree', 'wget', 'git', 'unzip', 'ntp']:}

file {'/etc/motd':
  source  => "puppet:///modules/default/etc/motd_$(hostname -s)",
  owner   => root,
  group   => root,
  mode    => '0644',
#  content => '
#	This file is managed by Puppet Enterprise
#  	server.arkitectpro.com
#  	dnsserver.arkitectpro.com
#  	pxeserver.arkitectpro.com',
}

service {'ntpd':
  ensure  => running,
  enable  => true,
}
}
