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
     mode    => '0644',
    source => 'puppet:///module/httpd_webpage/index.html',
   }
   
    service {'httpd':
      ensure => running,
      enable => true,
    }
}
