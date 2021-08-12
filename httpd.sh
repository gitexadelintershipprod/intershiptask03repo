#!/bin/bash
sudo apt update
sudo apt install apache2
OS_VERSION=$(cat /proc/version)
cd /var/www/html/
touch index.html
cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <title>Button align center</title>
      <style>
         .flex-parent {
            display: flex;
         }
         .jc-center {
            justify-content: center;
         }
         button.margin-right {
            margin-right: 20px;
         }
      </style>
   </head>
   <body>
       <hl>
         <p style="text-align:center"> Hello World </p>
         <p style="text-align:center"> Exadel Intership Extra Task </p>
         <p style="text-align:center"> $OS_VERSION </p>
       <hl>
   </body>
</html>
EOF
systemctl start httpd
systemctl enable httpd