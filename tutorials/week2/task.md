# QHU-CCSP Week 2 Tutorial

---

## 一、理论知识

### 1. HTTP与HTTPS协议

- **HTTP (超文本传输协议)**：  
  HTTP是用于从Web服务器到浏览器或客户端传输超文本（如HTML、图片等）的协议。学习其请求/响应过程、常见的HTTP请求方法（GET, POST, PUT, DELETE等）以及状态码（200, 404, 500等）。
  
- **HTTPS (超文本传输安全协议)**：  
  HTTPS是HTTP的安全版，使用SSL/TLS加密数据传输，以确保数据的机密性、完整性和真实性。理解SSL/TLS工作原理及HTTPS与HTTP的区别。

### 2. TCP/IP协议

- **TCP/IP协议栈**：  
  了解TCP/IP协议的各层结构，包括网络接口层、互联网层、传输层和应用层。深入学习各个层次的作用和工作原理，重点关注TCP的三次握手与四次挥手过程。
  
- **IP地址与端口**：  
  学习IP地址分类、子网掩码、端口号的作用以及如何使用网络工具（如ping、netstat）分析网络连接。

### 3. SQL是什么，能做什么

- **SQL (Structured Query Language)** 是用于与关系型数据库（如MySQL、PostgreSQL、SQL Server等）进行交互的标准语言。

- **SQL的功能**：  
  学习SQL的基本功能，包括查询数据（SELECT）、插入数据（INSERT）、更新数据（UPDATE）、删除数据（DELETE）以及数据库管理（如创建数据库和表格）。

### 4. SQL语法

- 详细学习SQL的基本语法，掌握常用的查询语句、条件语句、联接查询（JOIN）等，并能应用于实际数据库操作中。
  
- 学习SQL中的数据类型（如INT、VARCHAR、DATE等）、操作符（如AND, OR, IN等）以及聚合函数（如COUNT, SUM, AVG等）。

---

## 二、实践操作

### 1. sqlmap进阶操作

- **目标链接**：`http://101.43.235.147/sqli/02.php?id=2`
  
- **任务**：使用`sqlmap`工具进行SQL注入的进阶操作，定位和利用目标链接中的SQL注入漏洞。
  - 探索SQL注入攻击类型（盲注、联合查询注入、时间盲注等）。
  - 使用`sqlmap`进行自动化漏洞扫描、数据库信息泄露、数据提取等操作。
  - 记录操作过程中的每个命令和截图，特别是工具输出的关键结果。

### 2. SQL语法实践

- **进入小皮面板数据库**：
  1. 找到小皮面板数据库存储目录：`phpstudy_pro --> Extensions --> MySQL + 版本号 --> bin`
  2. 打开命令行（输入`cmd`）并回车，进入命令行界面。
  3. 输入`mysql -uroot -proot`进入数据库。

- **任务**：
  - 在小皮面板中操作MySQL数据库，先创建一个数据库。
  - 在新创建的数据库中建立几个表格，并在表格中插入数据。
  - 使用常见的SQL命令进行数据查询、修改、删除等操作。
  - 参考[Runoob SQL教程](https://www.runoob.com/sql/sql-tutorial.html)，对照教程进行SQL语法操作。

### 3. BurpSuite代理抓包

- **任务**：安装并配置BurpSuite，使用代理功能对目标网站的HTTP请求和响应进行抓取和分析。
  - 安装BurpSuite并配置浏览器使用BurpSuite作为代理服务器。
  - 进行简单的网页浏览，抓取HTTP请求数据包，分析请求头、请求体、响应头、响应体等。
  - 发送数据包至BurpSuite的其他模块，如**Intruder**进行暴力破解，**Repeater**进行手动重放数据包，**Decoder**进行数据解码等。
  - **截图要求**：从插件安装开始，到使用不同模块（如Intruder、Repeater等）重放数据包并修改数据的完整操作过程，记录每个步骤的截图。

### 4. 数据包分析

- **任务**：分析抓取到的HTTP数据包中的每个字段。
  - 分析请求行（Request Line）、请求头（Request Header）、请求体（Request Body）。
  - 分析响应行（Response Line）、响应头（Response Header）、响应体（Response Body）。
  - 关注特定字段的含义，例如：`User-Agent`、`Cookie`、`Authorization`等，理解其在请求中的作用和对安全性的影响。

---

## 三、注意事项

1. **进入小皮面板数据库的流程**：
   - 在数据库操作时，务必按照提供的路径和命令操作，以确保成功连接并进入MySQL数据库。

2. **SQL实践操作**：
   - 在进行修改和删除数据等操作时，务必避免直接在原始数据库中进行操作。推荐先创建一个新的数据库，并在该数据库中进行练习，避免损坏原始数据。
   - 实践时按照以下步骤进行：
     1. 创建一个新的数据库。
     2. 创建多个数据表。
     3. 向表中插入一些数据。
     4. 进行查询、更新、删除等SQL操作。

3. **截图和报告**：
   - 每次实践操作时，务必拍摄清晰的操作截图并保存。
   - 在报告中，详细记录操作步骤、命令、遇到的错误及解决方法。

---

## 四、总结与反馈

- 本周学习任务涵盖了理论知识与实践操作两大部分。通过这些任务，学员将熟悉网络安全中常见的HTTP/HTTPS协议、TCP/IP协议的工作原理，以及SQL数据库的基本操作技能。
- 实践部分要求学员亲自使用工具进行漏洞扫描、数据包分析、数据库操作等，旨在提高实际操作能力。
- 提交任务时请附上相关的截图和文字说明，确保每个操作都有详细的记录。

---

**本周任务完成后，务必提交相关报告，包括操作截图、学习心得和遇到的问题。**