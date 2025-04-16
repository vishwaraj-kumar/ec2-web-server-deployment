#!/bin/bash

# Update the package manager
sudo yum update -y

# Install Apache web server
sudo yum install httpd -y

# Start Apache service
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Create a sample HTML page
echo "<h1>Welcome to My Apache Web Server - Hosted on AWS EC2</h1>" | sudo tee /var/www/html/index.html

# Display the HTML file content
cat /var/www/html/index.html