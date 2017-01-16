node default {}

node puppetagent {
    
 include httpd_webpage 

   notify {"It Works!!!":} # Whitespace is fungible, remember.

}
