class ntp::params ($server = undef) {
$server = '192.168.1.2'
$time_server = hiera('ntp::params::server', $server)

if $time_server == undef {
  fail("Please provide at least one time server!")
}
  
}
