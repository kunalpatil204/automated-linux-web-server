#!/bin/bash

mkdir -p /var/www/myapp

chown -R WEBAPP:WEBAPP /var/www/myapp
chmod 750 /var/www/myapp

cat <<EOF > /var/www/myapp/index.php
<?php
echo "Linux Web Server Project - App Running Successfully";
?>
EOF

chmod 640 /var/www/myapp/index.php
