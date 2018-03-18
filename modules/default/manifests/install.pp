#Installation of the packages go here

class default::install {

package { ['java-1.7.0-openjdk', 'tree', 'wget', 'git', 'unzip', 'ntp']:}

group {'arkitectpro':
  ensure => present,
  gid    => 1111,
}

service {'ntpd':
  ensure  => running,
  enable  => true,
}
# This class is for installation of httpd packages on all systems

package {'httpd':
  ensure => latest,
  notify => Service['httpd'],
}

service {'httpd':
  ensure => running,
  enable => true,
}
}
