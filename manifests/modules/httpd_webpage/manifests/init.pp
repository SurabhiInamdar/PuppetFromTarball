class httpd_webpage {

    package {'httpd':
      ensure => present,
    } 
    file {'/var/www':  # Creating Document Root
       ensure => "directory",
       mode   => 'ug+w',
    }

  file {'/var/www/html/index.html': # Creating Index file
       ensure  => file,
       mode => '0644',
       owner => root,
       group => root,
       content => ' hi surabhi ',
     }

service {'httpd':
      ensure => running,
      enable => true,
    }
}
