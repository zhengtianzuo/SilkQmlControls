![](https://github.com/zhengtianzuo/SilkQmlControls/blob/master/SilkQmlControls.jpg?raw=true)

# SilkQmlControls
QtQuick方式的界面开发扩展库, 皮肤动态切换, 全局控件操作, 支持SVG图形换色, 支持单峰驼数据库IDE直接修改皮肤

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
* 后续会出专有的皮肤文件编辑器

####1. 使用方法:
  * 集成:
	拷贝SilkQmlControls文件夹到Qt安装路径\kit\qml下
	如: C:\Qt\Qt5.9.6\5.9.6\msvc2017_64\qml
	搞定, 重新打开QtCreator即可开始使用

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

####2. 部署方法:
	拷贝SilkQmlControls文件夹到程序生成根目录即可
```
SilkQmlControls               //SilkQml界面库目录
  qmldir                      //SilkQml界面库定义文件
    SilkQmlControls.dll       //SilkQml界面库运行库
    Skins                     //SilkQml界面库皮肤目录
      SilkSkin.Ztz            //默认皮肤文件
        aaa.ztz               //自定义皮肤文件
        bbb.ztz               //自定义皮肤文件
        ccc.ztz               //自定义皮肤文件
myapp.exe                     //自己的程序
```

####3. 皮肤文件的制作:



#### 联系方式:
***
|作者|郑天佐|
|---|---
|QQ|278969898
|主页|http://www.camelstudio.cn/
|邮箱|camelsoft@163.com
|博客|http://blog.csdn.net/zhengtianzuo06/
|github|https://github.com/zhengtianzuo
|QQ群|199672080|![](https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/qqgroup.jpg?raw=true)





***
#### **捐赠**
<img src="https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/weixin.jpg?raw=true" width="30%" height="30%" />           <img src="https://github.com/zhengtianzuo/zhengtianzuo.github.io/blob/master/zhifubao.jpg?raw=true" width="30%" height="30%" />

###### 觉得分享的内容还不错, 就请作者喝杯咖啡吧~~
***
