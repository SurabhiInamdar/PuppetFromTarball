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
     content => " <body bgcolor=rgb(200,0,255)> <h1>L3 & L4 Shared Delivery Team!</h1><p>By Puppet </p> </body> ",

     mode    => '0644',
   }   
    service {'httpd':
      ensure => running,
      enable => true,
    }
}
