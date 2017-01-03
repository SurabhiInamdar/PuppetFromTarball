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
     content => "L3 & L4 Shared Delivery Team",
     mode    => '0644',
   }   
    service {'httpd':
      ensure => running,
      enable => true,
    }
   notify {"I'm notifying u.":} # Whitespace is fungible, remember.
    notify {"I am surabhi":}
}

