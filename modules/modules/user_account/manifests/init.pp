class user_account ($username = 'Ibbi'){

  user { $username:
    ensure => present,
    uid    => '101',
    shell  => '/bin/bash',
    home   => "/home/$username",
  }

  file { '/tmp/user.txt':
    ensure  => file,
    content  => ("rb"),
  }
}

