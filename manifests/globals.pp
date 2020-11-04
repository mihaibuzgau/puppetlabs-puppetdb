# Global configuration class for PuppetDB. See README.md for more details.
class puppetdb::globals (
  $version                      = 'present',
  $database                     = 'postgres',
  ) {

  if !($facts['os']['family'] in ['RedHat', 'Suse', 'Archlinux', 'Debian', 'OpenBSD', 'FreeBSD']) {
    fail("${module_name} does not support your osfamily ${facts['os']['family']}")
  }

}
