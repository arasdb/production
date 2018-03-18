# this manifest is for multiple files

class default::files {

file {'/etc/motd':
  source  => "puppet:///modules/default/etc/motd_${hostname}",
  owner   => root,
  group   => root,
  mode    => '0644',
#  content => '
#       This file is managed by Puppet Enterprise
#       server.arkitectpro.com
#       dnsserver.arkitectpro.com
#       pxeserver.arkitectpro.com',
}

}
