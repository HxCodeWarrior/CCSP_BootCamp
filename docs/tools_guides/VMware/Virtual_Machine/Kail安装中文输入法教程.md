# <u>Kali安装中文输入法</u>
***
> *写作原因：~~网安小组里的某位聂姓学长说Kali的某个系统框架会和Fcitx输入法框架冲突导致整个Kali系统崩掉[实际只是会导致安装Fcitx输入法框架不成功，并不会导致整个系统崩掉(本人亲自使用他人虚拟机试验了)]~~，为帮助有此方面问题的同学，特此写下这篇文章作为安装IBus智能输入法的教程*

## 教程实际适用于大部分Linux系统

### 1.安装IBus拼音输入法
  - 打开终端输入 
  ```bash
  sudo apt install ibus ibus-pinyin #构建IBus输入法环境`
  ```
  - 输入你的root用户密码。 //输入密码是屏幕不会显示，一次性输入正确密码即可
  ![终端输入指令](https://gitee.com/zuohenlin/picture/raw/master/img/202409211843398.png)
  - 是否继续，直接点击回车
  ![回车继续](https://gitee.com/zuohenlin/picture/raw/master/img/202409211841827.png)
  - 继续输入以下命令使其生效
 ```bash
 sudo reboot #重启虚拟机
 ```

### 2.配置IBus拼音输入法
  - 重启后搜索“IBus”
  ![搜索IBus](https://gitee.com/zuohenlin/picture/raw/master/img/202409211856340.png)
  - 打开后点击输入法
  ![打开IBus首选项](https://gitee.com/zuohenlin/picture/raw/master/img/202409211858928.png)
  如果出现图中第二个（带有“拼”图标的）进行下一步，如果请没有点击右侧添加自行添加
  ![自行添加](https://gitee.com/zuohenlin/picture/raw/master/img/202409211900859.png)
  - 搜索“输入法”
  ![搜索输入法](https://gitee.com/zuohenlin/picture/raw/master/img/202409211902289.png)
  - 点击“输入法”，第一个页面点击“确定”
  ![点击确定](https://gitee.com/zuohenlin/picture/raw/master/img/202409211903048.png)
  第二个页面点击“是”
  ![点击是](https://gitee.com/zuohenlin/picture/raw/master/img/202409211904920.png)
  第三个页面勾选启用IBus输入法
  ![勾选启用](https://gitee.com/zuohenlin/picture/raw/master/img/202409211906028.png)
  之后一直点击确定到关闭界面
至次，ibus输入法安装并配置完成。

### 3.点开任意可以输入的地方，在右上角切换至中文，如下图
![切换中文输入](https://gitee.com/zuohenlin/picture/raw/master/img/202409211909271.png)
或者使用<kbd>Win</kbd>+<kbd>Space</kbd>切换成中文输入法
#### 注：输入法使用与window基本一致。
