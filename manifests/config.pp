# == Class: prelink
#
# === prelink::config documentation
#
class prelink::config inherits prelink {

  if($prelink::manage_package)
  {
    if ($prelink::package_ensure=='installed')
    {
      $file_ensure = 'present'
    }
    else
    {
      $file_ensure = 'absent'
    }
  }
  else
  {
    $file_ensure = 'present'
  }

  file { $prelink::params::config_file:
      ensure  => $file_ensure,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/prelink.erb"),
  }

}
