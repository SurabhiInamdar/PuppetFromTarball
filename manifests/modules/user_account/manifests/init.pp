class user_account ($username = 'Ibbi'){

  user { $username:
    ensure => present,
    uid    => '101',
    shell  => '/bin/bash',
    home   => "/home/$username",
  }

  $message = "hello world"
  file { '/tmp/user.txt':
    ensure  => file,
    content  => "The message for today is: $message.\n The 'osfamily' fact's value is: $osfamily. \n",
  }
}
