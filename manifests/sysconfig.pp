# Class: jenkins::sysconfig
#
define jenkins::sysconfig ( $value ) {
  $path = $facts['os']['family'] ? {
    'RedHat'  => '/etc/sysconfig',
    'Debian'  => '/etc/default',
    default => fail( "Unsupported OSFamily ${facts['os']['family']}" )
  }

  file_line { "Jenkins sysconfig setting ${name}":
    path  => "${path}/jenkins",
    line  => "${name}=\"${value}\"",
    match => "^${name}=",
  }
}

