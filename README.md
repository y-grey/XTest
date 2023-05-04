# XTest
欢迎加入测试开发交流QQ群：817744801

# [录制回放使用介绍点击这里](https://github.com/y-grey/XTest/blob/master/README_Replay.md)
# [Monkey使用介绍点击这里](https://github.com/y-grey/XTest/blob/master/README_Monkey.md)
以下为性能使用介绍

# 使用流程介绍
## 1、下载工具并启动
前往： [工具下载链接](https://github.com/y-grey/XTest/releases/tag/v1.0.0) ，下载工具，确保手机处于开发者USB调试模式，执行run启动

出现如下浮窗，则代表启动成功。其中“**最小化**”可在平时不使用工具的时候可将该窗口最小化，而“**退出**”则直接退出工具，下次启动需重新从PC端启动。建议不使用工具的时候选择”**最小化**“，不直接“**退出**”
![image](https://github.com/y-grey/XTest/blob/master/screenshot/1.png)

## 2、选择性能测试→选择测试应用
![image](https://github.com/y-grey/XTest/blob/master/screenshot/2.png)

## 3、开始采集性能数据
右上角实时显示当前性能数据，每秒刷新一次，浮窗可上下拖动来避免阻碍操作，点击浮窗右上角红点可结束测试
![image](https://github.com/y-grey/XTest/blob/master/screenshot/3.png)

## 4、结束测试
在手机sdcard目录下找到XTest目录，进入对应包名文件夹，可找到这次测试生成的性能数据.csv文件
![image](https://github.com/y-grey/XTest/blob/master/screenshot/4.png)

## 5、生成曲线图
通过文件发送或者adb pull的形式将文件导出到PC上，通过Excel打开后，可利用Excel的图表功能生成相应的性能曲线图
![image](https://github.com/y-grey/XTest/blob/master/screenshot/5.png)
