# test connection, see certificates
 { sleep 1; echo -en 'GET / HTTP/1.0\n\n' ; sleep 1; } |openssl s_client -connect www.google.com:443

# https test server
yes ''|openssl req -x509 -newkey rsa:2048 -keyout server.pem -out server.pem -nodes && openssl s_server -WWW 

