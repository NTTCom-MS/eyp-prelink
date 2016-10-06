# == Class: prelink
#
# === prelink documentation
#
class prelink(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits prelink::params{

  class { '::prelink::install': } ->
  class { '::prelink::config': } ~>
  class { '::prelink::service': } ->
  Class['::prelink']

}
