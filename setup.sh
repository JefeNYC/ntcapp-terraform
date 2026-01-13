#!/bin/bash
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Get the hostname first
HOSTNAME=$(hostname)
echo "<html>
  <body>
    <h1>${HOSTNAME}</h1>
    <p>You are being redirected to ${HOSTNAME} to see how the load balancer is sharing the traffic.</p>
  </body>
</html>" | sudo tee /var/www/html/index.html