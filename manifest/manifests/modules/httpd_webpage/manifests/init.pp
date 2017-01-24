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


file { '/etc/httpd/conf/httpd1.conf':
  ensure => present,
}->
file_line { 'Append a line to /etc/httpd/conf/httpd1.conf':
  path => '/etc/httpd/conf/httpd1.conf',
  line => 'code 1....
code 2....
code 3....',
}





file { '/etc/httpd/conf/xyz.txt':
  ensure => present,
}->
file_line { 'Append a line to /etc/httpd/conf/xyz.txt':
  path => '/etc/httpd/conf/xyz.txt',  
  line => 'Hello surabhi...how are you? heyyyyyyyyyyyyyyyy- m great',
}

service {'httpd':
      ensure => running,
      enable => true,
    }
}
