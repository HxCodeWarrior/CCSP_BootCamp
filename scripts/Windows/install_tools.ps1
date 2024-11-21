# 安装网络安全相关工具的 PowerShell 脚本
# 请确保以管理员权限运行此脚本

# 检查是否是管理员权限
if (-not([Security.Principal.WindowsBuiltinRole]::Administrator -in (New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).Roles)) {
    Write-Warning "请使用管理员权限运行此脚本！"
    exit
}

# 检查 Chocolatey 是否已安装，如果没有，则进行安装
if (!(Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    Write-Host "安装 Chocolatey 包管理器..."
    
    # 设置执行策略为 Bypass 并确保支持 TLS 1.2 协议
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    
    try {
        # 下载并执行 Chocolatey 的安装脚本
        $script = (New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')
        iex $script
        Write-Host "Chocolatey 安装完成！" -ForegroundColor Green
    }
    catch {
        Write-Host "下载或执行 Chocolatey 安装脚本时出错：" -ForegroundColor Red
        Write-Host $_.Exception.Message
    }
} else {
    Write-Host "Chocolatey 已安装，跳过安装步骤..." -ForegroundColor Yellow
}


# 更新 Chocolatey 并安装工具
Write-Host "更新 Chocolatey 并安装常用网络安全工具..."

# 安装 Nmap 网络扫描工具
Write-Host "安装 Nmap..."
choco install nmap -y

# 安装 Metasploit 漏洞利用框架
Write-Host "安装 Metasploit..."
choco install metasploit -y

# 安装 Wireshark 网络流量分析工具
Write-Host "安装 Wireshark..."
choco install wireshark -y

# 安装 Burp Suite 社区版（用于渗透测试和漏洞扫描）
Write-Host "安装 Burp Suite 社区版..."
choco install burpsuite-free-edition -y

# 安装 Nikto (Web服务器漏洞扫描工具)
Write-Host "安装 Nikto..."
choco install nikto -y

# 安装 OWASP ZAP (Zed Attack Proxy)
Write-Host "安装 OWASP ZAP..."
choco install owasp-zap -y

# 安装 SQLMap (自动化 SQL 注入工具)
Write-Host "安装 SQLMap..."
if (!(Test-Path -Path "C:\Tools\sqlmap")) {
    Write-Host "下载并安装 SQLMap..."
    New-Item -ItemType Directory -Path "C:\Tools"
    Invoke-WebRequest -Uri "https://github.com/sqlmapproject/sqlmap/archive/refs/heads/master.zip" -OutFile "C:\Tools\sqlmap.zip"
    Expand-Archive -Path "C:\Tools\sqlmap.zip" -DestinationPath "C:\Tools\sqlmap"
    Remove-Item "C:\Tools\sqlmap.zip"
    Write-Host "SQLMap 已安装至 C:\Tools\sqlmap"
} else {
    Write-Host "SQLMap 已安装，跳过..."
}

# 安装 Hydra (密码破解工具)
Write-Host "安装 Hydra..."
choco install hydra -y

# 配置环境变量（例如 SQLMap 工具）
Write-Host "将 SQLMap 添加到系统 PATH 中..."
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
if ($path -notlike "*C:\Tools\sqlmap\*") {
    [Environment]::SetEnvironmentVariable("PATH", $path + ";C:\Tools\sqlmap", "Machine")
    Write-Host "SQLMap 已添加到系统路径。"
} else {
    Write-Host "SQLMap 已在系统路径中，跳过此步骤。"
}

# 最后一步：验证安装
Write-Host "验证工具安装..."
nmap --version
metasploit-framework.bat --version
wireshark -v
burpsuite-free-edition --version
nikto -Version
sqlmap.py --version

Write-Host "所有工具已安装完毕。请重新启动 PowerShell 或命令行以确保所有环境变量生效。"
