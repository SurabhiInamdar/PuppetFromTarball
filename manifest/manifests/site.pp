node default {}

node puppetagent {
    
 include httpd_webpage 


   notify {"Hi it Works,yessssssssssss":} # Whitespace is fungible, remember.

 class {user_account:
username => "Ibbi",}

}
