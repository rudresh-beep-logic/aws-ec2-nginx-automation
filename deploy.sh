#!/bin/bash
# System updates and package installation
sudo apt-get update -y
sudo apt-get install -y nginx git

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a custom HTML Landing Page
cat <<EOF | sudo tee /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Automated Nginx Server</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #0f172a; color: #f8fafc; text-align: center; padding-top: 100px; }
        .card { background-color: #1e293b; max-width: 600px; margin: 0 auto; padding: 40px; border-radius: 12px; box-shadow: 0 10px 25px rgba(0,0,0,0.5); }
        h1 { color: #38bdf8; font-size: 28px; }
        p { font-size: 18px; color: #94a3b8; }
        .badge { background-color: #22c55e; color: #000; padding: 6px 12px; border-radius: 20px; font-weight: bold; display: inline-block; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="card">
        <h1>🚀 Automated Nginx Web Deployment</h1>
        <p>This infrastructure was provisioned automatically using <b>AWS EC2 User Data</b> and <b>Bash Scripting</b>.</p>
        <div class="badge">Status: Live & Operational</div>
    </div>
</body>
</html>
EOF
