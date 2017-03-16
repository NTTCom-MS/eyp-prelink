# == Class: prelink
#
# === prelink::install documentation
#
class prelink::install inherits prelink {

  Exec{
    path => '/usr/sbin:/usr/bin:/sbin:/bin',
  }

  if($prelink::manage_package)
  {
    package { $prelink::params::package_name:
      ensure => $prelink::package_ensure,
      notify => Exec['prelink ua'],
    }

    exec { 'prelink ua':
      command     => 'prelink -ua',
      refreshonly => true,
      onlyif      => 'which prelink',
      require     => Package[$prelink::params::package_name],
      timeout     => 0,
    }
  }

}
