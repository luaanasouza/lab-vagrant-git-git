#!/usr/bin/env bash
echo "Instalando o Apache e configurando..."
dnf install -y httpd
cp /vagrant/index.html /var/www/html/
systemctl enable --now httpd
firewall-cmd --permanent --add-service=http
firewall-cmd --reload