![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControls.jpg?raw=true)

***
# SilkQmlControls
![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsPage.jpg?raw=true)

中文名: 三峰驼

QtQuick方式的界面开发扩展库  **非开源**
这个项目的初衷在于, 提供一套完整的QtQuick界面库, 自带皮肤动态切换功能, 换肤换色, 一行代码完成. 提供配套的皮肤文件编辑器, 大大缩短开发时间. 另外不断开发扩展组件, 丰富功能.

![](https://img.shields.io/badge/%E7%89%88%E6%9D%83%E8%AE%B8%E5%8F%AF-MIT-orange.svg)
![](https://img.shields.io/badge/Qt-5.10-blue.svg)
![](https://img.shields.io/badge/%E7%89%88%E6%9C%AC-1.0.0.0-blue.svg)
![](https://img.shields.io/badge/%E7%BC%96%E8%AF%91-%E6%88%90%E5%8A%9F-brightgreen.svg)

特点：
* 皮肤动态切换, 动态加载解析皮肤文件
* 直接集成到QtCreator中, 开发便利, 使用简单, 与原生Qml组件一样的直接使用
* 全局控件操作, 一行代码即可操作同类型的组件
* SVG图形换色, 一个SVG图片 切换各种颜色和大小
* 支持单峰驼数据库IDE直接修改皮肤文件
* 除了基础组件, 会不断更新出各种高级扩展控件, 自由选择
* 可完全使用皮肤文件, 工程不需要配额外的图形打包到qrc中
* 提供全套组件, 自定义功能, 比如checkbox的图标显示大小, 颜色, 位置
* 后续会出专有的皮肤文件编辑器

#### 1. 使用方法:
  * 集成(插件的语法支持):
	拷贝doc\SilkQmlControls文件夹到Qt安装路径\kit\qml下
	如: C:\Qt\Qt5.12.0\5.12.0\msvc2017\qml, 重新打开QtCreator即可开始使用

  * 导入界面库使用
	import SilkQmlControls 1.0

  * 代码
	```
	SilkQmlText{
	  id: silkQmlText
	  text: qsTr("测试的文字abc")
	}
	```
	改造工程的话 可以直接在原生组件名前加SilkQml, Text->SilkQmlText

#### 2. 部署方法:
  各个版本的三峰驼运行库在dll目录下, 示例工程默认使用Qt 5.12.0 msvc2017 32位版本
	拷贝SilkQmlControls文件夹到程序生成根目录即可
```
SilkQmlControls               //SilkQml界面库目录
  qmldir                      //SilkQml界面库定义文件
    SilkQmlControls.dll       //SilkQml界面库运行库
    Skins                     //SilkQml界面库皮肤目录
      SilkSkin.Ztz            //默认皮肤文件
      aaa.ztz                 //自定义皮肤文件
      bbb.ztz                 //自定义皮肤文件
      ccc.ztz                 //自定义皮肤文件
myapp.exe                     //自己的程序
```

#### 3. 支持的Qt版本:
|操作系统|Qt版本|编译器|支持情况
|---|---|---|---
|Win7<br>Win10|5.10.0|msvc2015 32位<br>msvc2015 64位<br>msvc2017 32位(自行编译)<br>msvc2017 64位|支持
|Win7<br>Win10|5.11.0|msvc2015 32位<br>msvc2015 64位<br>msvc2017 32位(自行编译)<br>msvc2017 64位|支持
|Win7<br>Win10|5.12.0|msvc2015 32位(自行编译)<br>msvc2015 64位<br>msvc2017 32位<br>msvc2017 64位|支持
| | | | |
|Android|5.10.0<br>5.11.0<br>5.12.0|ndk-r15c ARMv7|计划中
| | | | |
|IOS|5.10.0<br>5.11.0<br>5.12.0|clang ARMv7|计划中
| | | | |
|Mac Sierra<br>Mac High Sierra<br>Mac Mojave|5.10.0<br>5.11.0<br>5.12.0|clang|计划中
| | | | |
|Ubuntu 14.04<br>Ubuntu 16.04<br>Ubuntu 18.04|5.10.0<br>5.11.0<br>5.12.0|gcc|计划中

#### 4. 皮肤文件的制作:
目前可使用<img src="https://github.com/zhengtianzuo/Camel_FileManagerCExamples/blob/master/CamelFileManagerCDll/dromedary.png?raw=true" width="3%" height="3%" />[单峰驼可视化工具](https://github.com/zhengtianzuo/Camel_FileManagerCExamples)编辑图片资源
    后续会出专有的皮肤文件编辑器

#### 5. 高级全局功能:
  * 一行代码全局换肤.
  * 同类型组件全局控制.
  * 区域内组件全局控制.
  * 控件自适应窗体大小改变.
  * 支持保存配置, 如窗体大小位置等.
  * 更多功能策划中...

#### 6. 效果预览图:
![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsTest/doc/main.jpg?raw=true)
![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsTest/doc/showsvg.gif?raw=true)
![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsTest/doc/showpic.gif?raw=true)
![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsTest/doc/controls.jpg?raw=true)

#### 7. 控件等级
|等级|导入|描述|
|---|---|---
|普通|import SilkQmlControls|最基础, 除了三峰驼特有的接口, 其余和原生的一样
|精英|import SilkQmlControlsElitist|高级扩展, 除了三峰驼特有的接口, 其余和原生的一样
|卓越|import SilkQmlControlsExcellent|模块化成套, 基本都是独立的功能, 提供自定义
|传说|import SilkQmlControlsLegendary|行业定制, 按各个行业特色开发的控件
|史诗|import SilkQmlControlsEpic|具有分布式存储功能, 支持数据分发与同步
|神话|import SilkQmlControlsMythical|具有连接云端功能, 支持数据上传, 支持远程控制

#### 8. 目前开发进度
|组件名|等级|对应原生组件|使用价格|源码价格|进度|博客
|---|---|---|---|---|---|---
|SilkQmlItem|普通|Item 2.x|永久免费|--|完成|
|SilkQmlText|普通|Text 2.x|永久免费|--|完成|
|SilkQmlRectangle|普通|Rectangle 2.x|永久免费|--|完成|
|SilkQmlImage|普通|Image 2.x|永久免费|--|完成|
|SilkQmlButton|普通|Button 2.x|永久免费|--|完成|
|SilkQmlCheckBox|普通|CheckBox 2.x|永久免费|--|完成|
|SilkQmlRadioButton|普通|RadioButton 2.x|永久免费|--|完成|
|SilkQmlSpinBox|普通|SpinBox 2.x|永久免费|--|完成|
|SilkQmlSlider|普通|Slider 2.x|永久免费|--|完成|
|SilkQmlSwitch|普通|Switch 2.x|永久免费|--|完成|
|SilkQmlProgressBar|普通|ProgressBar 2.x|永久免费|--|完成|
|SilkQmlDelayButton|普通|DelayButton 2.x|永久免费|--|完成|
|SilkQmlToolButton|普通|ToolButton 2.x|永久免费|--|完成|
|SilkQmlToolBar|普通|ToolBar 2.x|永久免费|--|完成|
|SilkQmlComboBox|普通|ComboBox 2.x|永久免费|--|完成|
|SilkQmlScrollBar|普通|ScrollBar 2.x|永久免费|--|完成|
|SilkQmlBusyIndicator|普通|BusyIndicator 2.x|永久免费|--|完成|
|SilkQmlDial|普通|Dial 2.x|永久免费|--|完成|
| | | | | | |
|SilkQmlToolTip|精英|提示信息|永久免费|300 ¥|完成|[去看看](https://blog.csdn.net/zhengtianzuo06/article/details/89083160)
|SilkQmlIPAddress|精英|IP输入框|永久免费|300 ¥|完成|[去看看](https://blog.csdn.net/zhengtianzuo06/article/details/89186074)
|SilkQmlDialog|精英|自定义对话框|永久免费|待定|待重新设计|
|SilkQmlColorDialog|精英|颜色输入对话框|永久免费|待定|待集成|
|SilkQmlMessageDialog|精英|消息提醒对话框|永久免费|待定|待重新设计|
|SilkQmlNotification|精英|通知消息|永久免费|待定|待集成|
| | | | | |
|SilkQmlCalendar|卓越|自定义日历|永久免费|待定|待集成|
|SilkQmlHanzi2Pinyin|卓越|汉字转拼音|永久免费|待定|待集成|
|SilkQmlYUVPlayer|卓越|YUV码流显示|永久免费|待定|待重新设计|
|SilkQmlComponentManager|卓越|Quick组件管理|永久免费|待定|待集成|
|SilkQmlDrawingBoard|卓越|画板|永久免费|待定|待集成|
|SilkQmlHttpDownload|卓越|Http文件下载|永久免费|待定|待集成|
|SilkQmlDragDrop|卓越|对象拖放|永久免费|待定|待集成|
|SilkQmlGenerateQRCode|卓越|创建二维码图片|永久免费|待定|待集成|
|SilkQmlScanQRCode|卓越|扫描二维码图片|永久免费|待定|待集成|
|SilkQmlKeyboard|卓越|虚拟键盘|永久免费|待定|待重新设计|
|SilkQmlMoveComponent|卓越|动态移动对象|永久免费|待定|待集成|
|SilkQmlTimeLine|卓越|时间刻度条|永久免费|待定|待重新设计|
|SilkQmlWeather|卓越|天气预报|永久免费|待定|待集成|
|SilkQmlNavigationProgress|卓越|导航进度|永久免费|待定|待重新设计|
|SilkQmlCaptcha|卓越|验证码|永久免费|待定|待重新设计|
|SilkQmlAudioPlayer|卓越|音频播放器|永久免费|待定|待重新设计|
|SilkQmlVideoPlayer|卓越|视频播放器|永久免费|待定|待重新设计|
|SilkQmlFontTools|卓越|字体工具|永久免费|待定|待集成|
|SilkQmlScreenShot|卓越|截屏工具|永久免费|待定|待集成|
|SilkQmlPictureView|卓越|图片预览工具|永久免费|待定|待集成|
|SilkQmlWidget|卓越|嵌入QWidget|永久免费|待定|待集成|
|SilkQmlActiveX|卓越|嵌入ActiveX组件|永久免费|待定|待集成|
|SilkQmlUpdate|卓越|在线自动升级|永久免费|待定|待重新设计|
|SilkQmlImageCache|卓越|图形高速缓存|永久免费|待定|待集成|
|SilkQmlPasswordSave|卓越|密码保存|永久免费|待定|待重新设计|
|更多...|卓越|||||
| | | | | | |
|更多...|传说|||||
| | | | | | |
|更多...|史诗|||||
|SilkQmlCloud|史诗|云端存储数据|5 ¥/月|非卖品|待重新设计|
| | | | | | |
|更多...|神话||||计划中|
|SilkQmlP2PMessage|神话|P2P消息|5 ¥/月|非卖品|待重新设计|
|SilkQmlRemoteViewer|神话|远程显示/控制|5 ¥/月|非卖品|待重新设计|
|SilkQmlLiveAudio|神话|实时音频|5 ¥/月|非卖品|待重新设计|
|SilkQmlLiveVideo|神话|实时视频|5 ¥/月|非卖品|待重新设计|
|SilkQmlLiveMeeting|神话|实时会议|10 ¥/月|非卖品|待重新设计|
| | | | | | |


#### 联系方式:
***
|作者|郑天佐|
|---|---
|QQ|278969898
|主页|http://www.camelstudio.cn/
|邮箱|camelsoft@163.com
|博客|http://blog.csdn.net/zhengtianzuo06/
|github|https://github.com/zhengtianzuo
|QQ群|199672080  ![](https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/qqgroup.jpg?raw=true)





***
#### **捐赠**
<img src="https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/weixin.jpg?raw=true" width="30%" height="30%" />           <img src="https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/zhifubao.jpg?raw=true" width="30%" height="30%" />

###### 觉得分享的内容还不错, 就请作者喝杯咖啡吧~~
***
