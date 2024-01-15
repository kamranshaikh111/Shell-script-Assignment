####################################################################################################################
#  Assignment No. =  01                                                                                            # 
#  Question No.   =  13                                                                                            #
#  Question       =  Write a shell script that automates the process of setting up a new virtual host on a web     #
#                    server.                                                                                       #
#  Name           =  Kamran Shaikh                                                                                 #
####################################################################################################################

#!/bin/bash

read -p "Enter the DOMAIN for the new virtual host (e.g., example.com): " DOMAIN
read -p "Enter the path to the web root (e.g., /var/www/html/$DOMAIN): " WEB

mkdir -p "$WEB"
echo "<html>
  <head>
    <title>Welcome to $DOMAIN</title>
  </head>
  <body>
    <h1>Success! The virtual host for $DOMAIN is working!</h1>
  </body>
</html>" > "$WEB/index.html"

cat > "/etc/apache2/sites-available/$DOMAIN.conf" <<EOF
<VirtualHost *:80>
    ServerAdmin webmaster@$DOMAIN
    ServerName $DOMAIN
    DocumentRoot $WEB

    <Directory $WEB>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

a2ensite "$DOMAIN.conf"
`systemctl reload apache2`
echo "Virtual host for $DOMAIN has been set up successfully!"
