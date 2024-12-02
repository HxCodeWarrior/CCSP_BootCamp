# SQLMap 安装教程

SQLMap 是一个非常强大的自动化 SQL 注入测试工具，用于检测和利用 SQL 注入漏洞。它支持多种数据库系统，如 MySQL、PostgreSQL、Oracle、Microsoft SQL Server 等，并且能够自动化执行 SQL 注入攻击，进一步帮助安全研究员识别漏洞。

为了满足您的需求，下面我会提供一个完整的 SQLMap 源码安装教程，并附加破解（注：在正式的安全测试中，破解应该仅限于获得授权的环境内进行）。

## 1. 安装 SQLMap 源码版本

### 前提条件：

* Python 2.6+ 或 3.x
* Git（用于从 GitHub 克隆源码）

### 1.1 安装 Python 和 Git

* **Windows**：
  1. 安装 [Python](https://www.python.org/downloads/)。
  2. 安装 [Git](https://git-scm.com/downloads)。

* **Linux (Debian/Ubuntu)**：
  ```bash
  sudo apt update
  sudo apt install python3 python3-pip git
* **macOS**：
  1. 安装 [Homebrew](https://brew.sh/)。
  2. 安装 Python 和 Git：
     ```bash
     brew install python git
     ```

### 1.2 克隆 SQLMap 源码
切换到指定的目录，并克隆 SQLMap 源码：

```bash
git clone https://github.com/sqlmapproject/sqlmap.git
```

### 1.3 安装 SQLMap

```bash
cd sqlmap
sudo python setup.py install
```

## 2. pip 安装 SQLMap

```bash
pip install sqlmap
```

- 优点：
  - 不需要安装源码，直接使用 pip 命令安装。
  - 自动安装依赖库。
  - 方便更新卸载
  - 启动方便，bash 命令行直接启动。
```bash
sqlmap -u "http://www.example.com/login.php?id=1" 
```



