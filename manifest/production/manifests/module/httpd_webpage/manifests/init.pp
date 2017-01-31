class httpd_webpage {

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
}
