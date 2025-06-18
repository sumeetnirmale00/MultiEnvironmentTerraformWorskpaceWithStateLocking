#!/bin/bash
# Update and install nginx
sudo apt-get update -y
sudo apt-get install nginx -y

# Enable and start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Create a simple and modern landing page
cat <<EOF | sudo tee /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Welcome to Nginx on AWS</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      text-align: center;
    }
    .container {
      max-width: 600px;
      padding: 20px;
      background: rgba(0, 0, 0, 0.3);
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0,0,0,0.5);
    }
    h1 {
      font-size: 3em;
      margin-bottom: 0.5em;
      color: #00d8ff;
    }
    p {
      font-size: 1.2em;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🚀 Hello from Nginx!</h1>
    <p>This server was launched with Terraform and set up using a bash script in Production Environment.</p>
    <p>Everything is running smoothly!</p>
  </div>
</body>
</html>
EOF

# Restart nginx to apply changes
sudo systemctl restart nginx
