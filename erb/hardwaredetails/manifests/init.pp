
$greetings = "have a great day!!!"
$serverRoot = "/etc/httpd"
$user = "apache"
$group = "apache"
$logLevel = "debug"
$port = "80"
$serverName = "104.199.192.21"
$serverAdmin = "surabhi.inamdar@accenture.com"
$redirectTo = "https://www.google.com/"
$my_ip = "https://104.199.192.21"



class hardwaredetails {
  file { '/etc/httpd/conf/httpd.conf':
    content => template('/etc/puppetlabs/code/environments/production/manifests/modules/hardwaredetails/templates/details.erb'),
  }
}


