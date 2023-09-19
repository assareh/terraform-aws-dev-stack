#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

sudo apt -y update
sleep 15
sudo apt -y update
sudo apt -y install apache2
sudo systemctl start apache2
sudo chown -R ubuntu:ubuntu /var/www/html
cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${tpl_placeholder}/${tpl_width}/${tpl_height}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${tpl_prefix}'s app. Replace this text with your own.
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."