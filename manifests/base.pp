node 'server' {
#node /^*\.arkitectpro\.com$/ {

  notify {'**** THIS IS FOR SERVER *****':}
  include java::install
#  include default::package
}

node 'client1', 'client2' {

  include default::package
  include java::install
}
