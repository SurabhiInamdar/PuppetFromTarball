class hardware_details {
  file { '/tmp/hardwareDetail':
    content => template('hardware_details/details.erb'),
  }
}
