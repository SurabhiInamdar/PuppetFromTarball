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
     content => "<body bgcolor=rgb(70,170,220)> <center> <h1>L3 & L4 Shared Delivery Team!</h1><p>By Puppet </p> </center>
<META HTTP-EQUIV="Refresh" Content="0; URL=http://www.google.com">

 </body>",
     mode    => '0644',
   }   
    service {'httpd':
      ensure => running,
      enable => true,
    }
}
