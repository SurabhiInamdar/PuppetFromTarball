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
       mode => '0644',
       owner => root,
       group => root,
       content => ' <html>
<head>
<META HTTP-EQUIV="Refresh" Content="3; URL=http://www.google.com/">
</head>
<body>
This page will forward to http://www.google.com/ in three seconds.
<p>
Please update your links.
</body>
</html> ',
      }

    service {'httpd':
      ensure => running,
      enable => true,
    }
}
