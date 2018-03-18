node 'server' {
#node /^*\.arkitectpro\.com$/ {

#  notify {'**** THIS IS FOR SERVER *****':}
  include default::install
  include default::users
  include default::files
#  include default::package
}

node 'client1', 'client2' {

  include default::install
  include default::users
  include default::files
}
