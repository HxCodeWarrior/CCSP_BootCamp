# 初始化 PowerShell 脚本：用于在 Windows 上安装环境和部署靶场

# 设置为管理员模式运行
if (-not([Security.Principal.WindowsBuiltinRole]::Administrator -in (New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).Roles)) {
    Write-Warning "请使用管理员权限运行此脚本！"
    exit
}

Write-Host "开始初始化环境..."

# 安装 Chocolatey（Windows 包管理器）用于安装依赖
Write-Host "安装 Chocolatey 包管理器..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 安装必需的软件 (git, php, mysql, apache)
Write-Host "安装 Git, PHP, MySQL, Apache..."
choco install git -y
choco install php -y
choco install mysql -y
choco install apache-httpd -y

# 启动 Apache 和 MySQL 服务
Write-Host "启动 Apache 和 MySQL 服务..."
Start-Service -Name mysql
Start-Service -Name apache

# 创建 MySQL 数据库和用户
Write-Host "配置 MySQL..."
mysql -u root -p -e "CREATE DATABASE dvwa; CREATE USER 'dvwa'@'localhost' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON dvwa.* TO 'dvwa'@'localhost'; FLUSH PRIVILEGES;"

# 创建项目目录
$webRoot = "C:\inetpub\wwwroot"
Write-Host "创建项目目录: $webRoot"
if (!(Test-Path -Path $webRoot)) {
    New-Item -ItemType Directory -Path $webRoot
}

# 克隆 DVWA、Pikachu、SQLi-Labs、Upload-Labs、XSS-Labs
Write-Host "克隆 DVWA..."
git clone https://github.com/digininja/DVWA.git "$webRoot\DVWA"

Write-Host "克隆 Pikachu..."
git clone https://github.com/zhuifengshaonianhanlu/pikachu.git "$webRoot\pikachu"

Write-Host "克隆 SQLi-Labs..."
git clone https://github.com/Audi-1/sqli-labs.git "$webRoot\sqli-labs"

Write-Host "克隆 Upload-Labs..."
git clone https://github.com/c0ny1/upload-labs.git "$webRoot\upload-labs"

Write-Host "克隆 XSS-Labs..."
git clone https://github.com/s0md3v/XSStrike.git "$webRoot\xss-labs"

# 设置文件夹权限
Write-Host "设置文件权限..."
icacls "$webRoot\*" /grant "IIS_IUSRS:F" /t

# 重启 Apache 服务
Write-Host "重启 Apache 服务..."
Restart-Service -Name apache

# 完成初始化
Write-Host "环境初始化完成！请在浏览器中访问以下 URL 进行测试："
Write-Host "DVWA: http://localhost/DVWA"
Write-Host "Pikachu: http://localhost/pikachu"
Write-Host "SQLi-Labs: http://localhost/sqli-labs"
Write-Host "Upload-Labs: http://localhost/upload-labs"
Write-Host "XSS-Labs: http://localhost/xss-labs"
