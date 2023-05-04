# XTest-Monkey使用流程介绍
## 1、下载工具并启动
前往： [工具下载链接](https://github.com/y-grey/XTest/releases/tag/v1.0.0) ，下载工具，确保手机处于开发者USB调试模式，执行run启动

出现如下浮窗，则代表启动成功。其中“**最小化**”可在平时不使用工具的时候可将该窗口最小化，而“**退出**”则直接退出工具，下次启动需重新从PC端启动。建议不使用工具的时候选择”**最小化**“，不直接“**退出**”

![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/1.png)

## 2、选择Monkey→选择测试应用
![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/2.png)

## 3、进入到Monkey配置页面，可配置是否低电量退出，黑/白名单Activity，目标页用例，和黑名单控件。
![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/3.png)

## 4、黑/白名单Activity配置，目标页用例：
- Activity黑名单：Monkey遍历过程中会屏蔽这些Activity的启动
- Activity白名单：Monkey遍历过程中只允许这些Activity的启动
- 选择配置黑/白名单Activity后，弹出当前应用的所有Activity，选择需要配置的Activity即可。
- 如果不知道页面对应Activity名可以先进入第5步配置黑名单控件，进入希望配置的页面，再点击显示Activity。
- 设置目标页用例后可直达目标页做Monkey遍历，需要先在录制回放模块中录制目标页用例

![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/4.png)

## 5、黑名单控件配置：
点击配置页面的选择后进入录制模式，录制模式下可录制你点击的控件，录制的控件实时显示在浮窗列表里，只需要选择列表里控件，完成后会添加选择的控件到黑名单控件里。  
另外，第四步里如果需要配置Activity名单，但不知道页面对应Activity名，则可以进入到希望配置的页面，再点击显示Act，则会把当前Activity显示出来。

![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/5.png)

## 6、最后回来配置页面，点击确定则直接开始Monkey遍历测试，手动息屏或者电量小于5%的时候自动退出遍历。
![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/6.png)

## 7、当出现crash或者anr会自动保存堆栈，截图等异常信息到指定路径下（/sdcard/XTest/'应用包名'/Monkey/"测试开始时间"/ ），保存完成后会继续执行Monkey遍历。当停止后也会保存Activity的覆盖率信息到这个目录下。

![image](https://github.com/y-grey/XTest/blob/master/screenshot/Monkey/7.png)

## 8、crash分析：
crash文件夹里保存了crash堆栈和截图，当在一次遍历中出现了多次相同crash堆栈，则会自动在尾部添加信息：xx时间出现了一次相同crash。因此当一次遍历出现多次相同crash，则为出现频率高的bug，应尽快修复。
CRASH: com.**** (pid9931) (dump time:2023-02-14 20:43:47)

Build Label: OPPO/PGBM10/OP5287:12/SP1A.210812.016/S.202212191306:user/release-keys

Build Time:1671425047000

Long Msg:java.lang.NullPointerException: Attempt to invoke interface method'float ***.view.crop.x6a_b.j()'on anullobject reference

at ***.view.crop.croptools.VECropView.c(SourceFile:327682)

at ***.view.crop.croptools.VECropView.a(SourceFile:33947738)

at ***.view.crop.x6a_a.a(SourceFile:33619972)

at com.***.view.crop.VECropChooserView.onCheckedChanged(SourceFile:33947725)

at android.widget.RadioGroup.setCheckedId(RadioGroup.java:202)

at android.widget.RadioGroup.access$600(RadioGroup.java:64)

at android.widget.RadioGroup$CheckedStateTracker.onCheckedChanged(RadioGroup.java:387)

at android.widget.CompoundButton.setChecked(CompoundButton.java:225)

at android.widget.CompoundButton.toggle(CompoundButton.java:139)

at android.widget.RadioButton.toggle(RadioButton.java:82)

at android.widget.CompoundButton.performClick(CompoundButton.java:144)

at android.view.View.performClickInternal(View.java:7471)

at android.view.View.access$3700(View.java:843)

at android.view.View$PerformClick.run(View.java:29098)

at android.os.Handler.handleCallback(Handler.java:938)

at android.os.Handler.dispatchMessage(Handler.java:99)

at android.os.Looper.loopOnce(Looper.java:233)

at android.os.Looper.loop(Looper.java:344)

at android.app.ActivityThread.main(ActivityThread.java:8248)

at java.lang.reflect.Method.invoke(Native Method)

at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:589)

at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:1071)

CRASH:2023-02-14 21:08:02 出现了一次相同crash

CRASH:2023-02-14 23:47:49 出现了一次相同crash

CRASH:2023-02-14 23:50:30 出现了一次相同crash

CRASH:2023-02-14 23:52:51 出现了一次相同crash

CRASH:2023-02-15 07:19:07 出现了一次相同crash

## 9、ANR分析：
ANR文件夹里保存了ANR的原因、CPU和内存占用情况。同时会导出bugreport，Android9.0及以下的版本存储在anr_bugreport.txt里，Android9.0以上则保存在anr_bugreport.zip里（解压后的FS/data/anr目录下）。通过anr_bugreport可以知道当前应用线程的执行堆栈，从而更好的定位问题。




