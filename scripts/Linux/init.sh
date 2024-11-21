#!/bin/bash

# 初始化脚本：用于安装基础环境和搭建渗透测试靶场

echo "初始化开始..."

# 更新系统并安装基本依赖
echo "更新系统并安装基本依赖..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y git apache2 mysql-server php php-mysqli libapache2-mod-php unzip wget

# 安装 phpstudy 或类似环境
echo "设置 PHP 环境..."
# 假设使用 Ubuntu，安装PHP环境并启动服务
sudo systemctl enable apache2
sudo systemctl enable mysql
sudo systemctl start apache2
sudo systemctl start mysql

# 设置MySQL安全配置并创建数据库
echo "配置 MySQL..."
sudo mysql_secure_installation

# 创建靶场需要的数据库和用户
mysql -u root -p <<EOF
CREATE DATABASE dvwa;
CREATE USER 'dvwa'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON dvwa.* TO 'dvwa'@'localhost';
FLUSH PRIVILEGES;
EOF

# 下载并部署渗透测试靶场

# 克隆 DVWA (Damn Vulnerable Web Application)
echo "安装 DVWA..."
git clone https://github.com/digininja/DVWA.git /var/www/html/DVWA
sudo cp /var/www/html/DVWA/config/config.inc.php.dist /var/www/html/DVWA/config/config.inc.php

# 克隆 Pikachu 漏洞靶场
echo "安装 Pikachu..."
git clone https://github.com/zhuifengshaonianhanlu/pikachu.git /var/www/html/pikachu

# 克隆 SQLi-Labs 靶场
echo "安装 SQLi-Labs..."
git clone https://github.com/Audi-1/sqli-labs.git /var/www/html/sqli-labs

# 克隆 Upload-Labs 靶场
echo "安装 Upload-Labs..."
git clone https://github.com/c0ny1/upload-labs.git /var/www/html/upload-labs

# 克隆 XSS-Labs 靶场
echo "安装 XSS-Labs..."
git clone https://github.com/s0md3v/XSStrike.git /var/www/html/xss-labs

# 修改文件权限，确保Apache能够读取这些文件
echo "设置文件权限..."
sudo chown -R www-data:www-data /var/www/html/*
sudo chmod -R 755 /var/www/html/*

# 重启 Apache 服务，确保设置生效
echo "重启 Apache 服务..."
sudo systemctl restart apache2

# 完成初始化
echo "环境初始化完成。请在浏览器中访问以下 URL 进行测试："
echo "DVWA: http://localhost/DVWA"
echo "Pikachu: http://localhost/pikachu"
echo "SQLi-Labs: http://localhost/sqli-labs"
echo "Upload-Labs: http://localhost/upload-labs"
echo "XSS-Labs: http://localhost/xss-labs"
