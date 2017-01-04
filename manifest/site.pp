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
    package {'httpd':
      ensure => present,
    } 
    file {'/var/wwww':  # Creating Document Root
      ensure => "directory",
       mode   => 'ug+w',
    }

  file {'/var/www/html/index.html': # Creating Index file
     ensure  => file,
     content => " <body bgcolor=rgb(200,0,255)> <h1>L3 & L4 Shared Delivery Team!</h1><p>By Puppet </p> <i/body> ",

     mode    => '0644',
   }   
    service {'httpd':
      ensure => running,
      enable => true,
    }
   notify {"I'm notifying u.":} # Whitespace is fungible, remember.
    notify {"I am surabhi":}
}

