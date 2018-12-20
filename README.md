![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControls.jpg?raw=true)

# SilkQmlControls

![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControlsPage.png?raw=true)

中文名: 三峰驼
QtQuick方式的界面开发扩展库  **非开源**
这个项目的初衷在于, 提供一套完整的QtQuick界面库, 自带皮肤动态切换功能, 换肤换色, 一行代码完成. 提供配套的皮肤文件编辑器, 大大缩短开发时间. 另外不断开发扩展组件, 丰富功能. 弥补QtQuick2.0下很多缺失的组件功能, 如TableView.

![](https://img.shields.io/badge/%E7%89%88%E6%9D%83%E8%AE%B8%E5%8F%AF-MIT-orange.svg)
![](https://img.shields.io/badge/Qt-5.10-blue.svg)
![](https://img.shields.io/badge/%E7%89%88%E6%9C%AC-1.0.0.0-blue.svg)
![](https://img.shields.io/badge/%E7%BC%96%E8%AF%91-%E6%88%90%E5%8A%9F-brightgreen.svg)

目前正在准备上线中 敬请期待~~

特点：
* 皮肤动态切换, 动态加载解析皮肤文件
* 直接集成到QtCreator中, 开发便利, 使用简单, 与原生Qml组件一样的直接使用
* 全局控件操作, 一行代码即可操作同类型的组件
* SVG图形换色, 一个SVG图片 切换各种颜色和大小
* 支持单峰驼数据库IDE直接修改皮肤文件
* 除了基础组件, 会不断更新出各种高级扩展控件, 自由选择
* 可完全使用皮肤文件, 工程不需要配额外的图形打包到qrc中
* 提供自定义功能, 比如checkbox的图标显示大小, 颜色, 位置
* 提供全套组件, 包括QtQuick.Controls 2.0缺少的很多组件, 如TableView
* 后续会出专有的皮肤文件编辑器

#### 1. 使用方法:
  * 集成:
	拷贝SilkQmlControls文件夹到Qt安装路径\kit\qml下
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
    后续会出专有的皮肤文件编辑器

#### 5. 高级全局功能:
  * 一行代码全局换肤:
  * 同类型组件全局控制:
  * 区域内组件全局控制:
  * 更多功能策划中...

#### 6. 效果预览图:



#### 7. 目前开发进度
|组件名|类型|对应原生组件|进度
|---|---|---|---
|SilkQmlItem|基础|Item 2.x|完成
|SilkQmlText|基础|Text 2.x|完成
|SilkQmlRectangle|基础|Rectangle 2.x|完成
|SilkQmlImage|基础|Image 2.x|完成
|SilkQmlButton|基础|Button 2.x|完成
|SilkQmlCheckBox|基础|CheckBox 2.x|完成
|SilkQmlRadioButton|基础|RadioButton 2.x|完成
|SilkQmlSpinBox|基础|SpinBox 2.x|完成
|SilkQmlSlider|基础|Slider 2.x|完成
|SilkQmlSwitch|基础|Switch 2.x|完成
|SilkQmlProgressBar|基础|ProgressBar 2.x|完成
|SilkQmlDelayButton|基础|DelayButton 2.x|完成
|SilkQmlToolButton|基础|ToolButton 2.x|完成
|SilkQmlToolBar|基础|ToolBar 2.x|完成
|SilkQmlComboBox|基础|ComboBox 2.x|完成
|SilkQmlScrollBar|基础|ScrollBar 2.x|完成
|SilkQmlBusyIndicator|基础|BusyIndicator 2.x|完成
|SilkQmlDial|基础|Dial 2.x|完成
| | | |
|SilkQmlToolTip|高级|ToolTip 2.x|进行中
|SilkQmlDialog|高级|Dialog 2.x|进行中
|SilkQmlColorDialog|高级|ColorDialog 1.3|计划中
|SilkQmlFileDialog|高级|FileDialog 1.3|计划中
|SilkQmlFontDialog|高级|FontDialog 1.3|计划中
|SilkQmlMessageDialog|高级|MessageDialog 1.3|计划中
|SilkQmlMenu|高级|Menu 2.x|计划中
|SilkQmlMenuBar|高级|MenuBar 2.x|计划中
|SilkQmlStatusBar|高级|StatusBar 1.4|计划中
|SilkQmlListView|高级|ListView 2.x|计划中
|SilkQmlTabView|高级|TabView 1.4|计划中
|SilkQmlTableView|高级|TableView 1.4|计划中
|SilkQmlTreeView|高级|TreeView 1.4|计划中
|SilkQmlCalendar|高级|Calendar 1.4|计划中
| | | |
|SilkQmlDrawingBoard(画板)|极品||计划中
|SilkQmlAudioPlayer(音频播放器)|极品||计划中
|SilkQmlVideoPlayer(视频播放器)|极品||计划中
|SilkQmlFontTools(字体工具)|极品||计划中
|SilkQmlScreenShot(截屏工具)|极品||计划中
|SilkQmlPictureView(图片预览工具)|极品||计划中
|更多...|极品||计划中

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
