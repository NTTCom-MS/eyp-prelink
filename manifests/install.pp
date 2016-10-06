# == Class: prelink
#
# === prelink::install documentation
#
class prelink::install inherits prelink {

  if($prelink::manage_package)
  {
    package { $prelink::params::package_name:
      ensure => $prelink::package_ensure,
      notify => Exec['prelink ua'],
    }

    exec { 'prelink ua':
      command     => 'prelink -ua',
      refreshonly => true,
      require     => Package[$prelink::params::package_name],
    }
  }

}
