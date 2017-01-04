node default {}

node puppetagent {
    
    file {'/tmp/test1':
        ensure  => present,
        content => "Hello World!",
    }

    file {'/tmp/test2':
        ensure => directory,
        mode   => 'ug+w',
    }

    file {'/tmp/test3':
        ensure => link,
        target => '/tmp/test1',
    }
   notify {"I'm notifying u.":} # Whitespace is fungible, remember.
}

