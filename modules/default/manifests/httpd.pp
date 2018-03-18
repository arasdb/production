# This class is for installation of httpd packages on all systems
class default::package {

package {'httpd':
  ensure => latest,
  notify => Service['httpd'],
}

service {'httpd':
  ensure => running,
  enable => true,
}
}
