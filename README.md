# CCSP_BootCamp
欢迎来到青海的大学网络安全培训及项目管理社团的GitHub仓库！这个仓库旨在为社团成员提供一个集中的平台，以共享和协作有关网络安全培训和项目管理的资源、工具和最佳实践。我们的目标是促进网络安全意识和技能的提升，同时培养团队成员在项目管理方面的能力。

## 目录结构

- `docs/`: 每周的学习资料、常用工具的教程、靶场搭建教程
  - `tools_guides/`: 网络安全工具使用指南
  - `Penetration_Testing_Range/`: 渗透测试靶场搭建教程
- `exercises/`: 每周的练习题和实验
- `solutions/`: 每周练习题的参考答案
- `projects/`: 网络安全实战及开发项目
- `tools/`: 常用工具和字典资源
- `resources/`: 推荐书籍、网络资源和CTF竞赛资源
- `scripts/`: 一键安装和环境配置脚本
团队成员
- team/ (团队目录)
  - member1.md (成员1简介)
  - member2.md (成员2简介)

## 渗透测试靶场搭建教程

在 `docs/Penetration_Testing_Range/` 目录下，提供了多种常用的渗透测试靶场搭建教程：
- **phpstudy.md**: 介绍小皮面板的安装，靶场搭建的第一步
- **dvwa.md**: DVWA (Damn Vulnerable Web Application) 漏洞靶场搭建教程
- **pikachu.md**: Pikachu 漏洞靶场搭建教程
- **sqli-labs.md**: SQL注入实验室（sqli-labs）搭建教程
- **upload-labs.md**: 文件上传实验室（upload-labs）搭建教程
- **xss-labs.md**: XSS 漏洞实验室（xss-labs）搭建教程

## 常用工具介绍

在 `docs/tools_guides/` 目录下，包含了网络安全常用工具的详细介绍：
- **nmap.md**: Nmap 网络扫描工具介绍及常用操作方法
- **metasploit.md**: Metasploit 漏洞利用框架的使用介绍和基本命令
- **burpsuite_guide.md**: Burp Suite 工具的使用指南，用于网络攻击测试

## 如何开始

1. **克隆仓库**：
    ```bash
    git clone https://github.com/yourusername/CCSP_BootCamp.git
    cd CCSP_BootCamp
    ```

2. **安装工具(未启用)**：
  - Linux版本
    使用 `scripts/install_tools.sh` 一键安装所有需要的工具：
    ```bash
    bash scripts/install_tools.sh
    ```
  - Windows版本
    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force
    .\install_tools.ps1
    ```

3. **初始化环境(未启用)**：
  - Linux版本
    运行 `init.sh` 脚本来设置初始的实验环境：
    ```bash
    chmod +x scripts/install_tools.sh
    bash scripts/install_tools.sh
    ```
  - Windows版本
    - 检查当前执行策略
      ```powershell
      Get-ExecutionPolicy
      ```
    - 如果执行策略为 `Restricted` 或 `AllSigned`，请将其设置为 `RemoteSigned` 或 `Unrestricted`：
      ```powershell
      Set-ExecutionPolicy RemoteSigned -Scope Process -Force
      ```
    - 运行 `init.ps1` 脚本来设置初始的实验环境(切换到文件所在位置)：
      ```powershell
      .\init.ps1  
      ```

## 贡献指南

欢迎贡献！您可以通过提交Issue或Pull Request帮助我们改进该项目。
1.分享资源：如果你发现了有用的网络安全或项目管理工具、课程或其他资源，可以将其添加到resources/目录下。
2.项目合作：如果你想参与一个网络安全相关的项目，可以在projects/目录下创建一个新项目文件夹，并在其中添加项目计划和报告。
3.完善团队信息：在通过团队审核后，可以在team/目录下添加你的个人信息，以便其他成员了解你的贡献和专长。
