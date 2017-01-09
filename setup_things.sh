# Startup script to launch the node app
sudo mv /tmp/app/deployment/myapp.service /lib/systemd/system/myapp.service

# Point Apache to our config
sudo mv /tmp/app/deployment/apache_conf/bitnami-apps-prefix.conf /opt/bitnami/apache2/conf/bitnami/bitnami-apps-prefix.conf


# Auto-start the service
sudo systemctl enable myapp.service

# Move the code into a permanent location
sudo mv /tmp/app /opt/bitnami/app

# Install all our NodeJS dependencies
cd /opt/bitnami/app && npm install
