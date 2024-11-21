# Java 11安装教程

1. 下载Java 11
   首先，你需要从Oracle官网下载Java 11的安装包。

   访问Oracle官方网站下载适合你操作系统的JDK 11安装包。

2. 安装Java 11
   ### Windows系统
   - 双击下载的安装包，启动安装程序。
   - 接受许可协议，点击“下一步”。
   - 选择安装类型，通常选择“Custom”自定义安装。
   - 选择安装路径，建议选择非系统盘，例如C:\Program Files\Java\jdk-11。
   - 完成安装，点击“下一步”直至安装完成。

   ### Linux系统
   - 解压下载的tar.gz文件：
     ```bash
     sudo tar -xzf jdk-11.0.1_linux-x64_bin.tar.gz -C /opt
     ```
     这将解压JDK到/opt目录下。

   - 设置环境变量：
     打开~/.bashrc文件：
     ```bash
     nano ~/.bashrc
     ```
     在文件末尾添加以下行：
     ```bash
     export JAVA_HOME=/opt/jdk-11.0.1
     export PATH=$PATH:$JAVA_HOME/bin
     ```
     保存并关闭文件。

   - 应用环境变量：
     ```bash
     source ~/.bashrc
     ```

3. 验证安装
   在任何操作系统上，你可以通过打开命令行或终端并输入以下命令来验证Java是否正确安装：
   ```bash
   java -version
   ```

   如果安装成功，你将看到类似以下的输出：
   ```
   java version "11.0.1" 2018-04-17
   Java(TM) SE Runtime Environment 18.9 (build 11.0.1+13-LTS)
   Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.1+13-LTS, mixed mode)
   ```
   其中，“11.0.1”是Java版本号，“2018-04-17”是编译日期。

4. 设置JAVA_HOME环境变量
   ### Windows系统
   在Windows系统上，你需要设置JAVA_HOME环境变量，以便Java可以找到JDK。
   - 打开“控制面板” -> “系统和安全” -> “系统” -> “高级系统设置” -> “环境变量”
   - 点击“新建”按钮，在“变量名”输入“JAVA_HOME”，在“变量值”输入JDK安装路径，点击“确定”按钮。
   示例JDK安装路径：C:\Program Files\Java\jdk-11

   ### Linux系统
   在Linux系统上，你需要设置JAVA_HOME环境变量，以便Java可以找到JDK。
   - 打开~/.bashrc文件：
     ```bash
     nano ~/.bashrc
     ```
   - 在文件末尾添加以下行：
     ```bash
     export JAVA_HOME=/opt/jdk-11.0.1
     export PATH=$PATH:$JAVA_HOME/bin
     ```
   - 保存并关闭文件。
   - 应用环境变量：
     ```bash
     source ~/.bashrc
     ```

5. 更新Java版本（可选）
   如果你需要在多个Java版本之间切换，可以使用：
   - 仅限Linux：update-alternatives
   - 适用于Windows和Linux：rvm（Ruby Version Manager）

   ### Linux系统
   - 安装rvm：
     ```bash
     sudo apt-get install curl
      \curl -sSL https://get.rvm.io | bash -s stable
      source ~/.bashrc
     ```
    - 添加Java版本：
      ```bash
      sudo update-alternatives --install /usr/bin/java java /opt/jdk-11.0.1/bin/java 1
      ```
    - 设置默认Java版本：
      ```bash
      sudo update-alternatives --config java
      ```

   ### Windows系统
   - 安装rvm-installer：
     ```bash
     choco install rvm-installer
     ```
   - 安装Java版本：
     ```bash
     rvm install jdk-11.0.1
     ```
   - 设置默认Java版本：
     ```bash
     rvm use jdk-11.0.1 --default
     ```

以上是Java的安装教程，希望对你有所帮助。如果在安装过程中遇到任何问题，请随时提问。