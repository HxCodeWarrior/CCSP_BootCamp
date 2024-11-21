# 检查是否具有管理员权限
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "此脚本需要以管理员身份运行。正在退出..."
    exit
}

Write-Host "正在配置实验环境..." -ForegroundColor Green

# 更新系统（根据需求选择是否需要）
Write-Host "正在更新系统..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "saps powershell -Verb runAs; Install-Module -Name PSWindowsUpdate -Force" -Wait
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll

# 关闭防火墙（可选 - 仅供实验测试时使用）
Write-Host "正在关闭 Windows 防火墙..." -ForegroundColor Red
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# 安装必要的软件
Write-Host "正在安装必要的软件..." -ForegroundColor Yellow
# 示例：安装 Python
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "未检测到 Python。正在安装 Python..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe" -OutFile "python-installer.exe"
    Start-Process "python-installer.exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
    Remove-Item "python-installer.exe"
}
else {
    Write-Host "已安装 Python。" -ForegroundColor Green
}

# 安装 pip 和其他 Python 包
Write-Host "正在安装 Python 包..." -ForegroundColor Yellow
pip install requests scapy pycryptodome

# 配置环境变量（示例）
Write-Host "正在设置环境变量..." -ForegroundColor Yellow
[Environment]::SetEnvironmentVariable("LAB_ENV", "NETWORK_SECURITY", [EnvironmentVariableTarget]::Machine)

# 示例：禁用 UAC 提示（可选 - 根据实验环境需求）
Write-Host "正在禁用 UAC 提示..." -ForegroundColor Red
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLUA" -Value 0

# 示例：下载并安装特定工具（如 Wireshark）
Write-Host "正在安装 Wireshark..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "https://www.wireshark.org/download/win64/Wireshark-win64-3.4.6.exe" -OutFile "WiresharkInstaller.exe"
Start-Process "WiresharkInstaller.exe" -ArgumentList "/S" -Wait
Remove-Item "WiresharkInstaller.exe"

# 最后清理并输出系统信息
Write-Host "实验环境配置完成！" -ForegroundColor Green
