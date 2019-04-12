import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import Qt.labs.platform 1.0
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Rectangle{
    property alias vbar: vbar
    property int nDefaultSpace: 12
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"

    id: frmWindow
    color: "transparent"

    function showMsg(text){
        msg.text = text;
        msg.open();
    }

    MessageDialog{
        id: msg
        buttons: MessageDialog.Ok
    }

    SilkQmlRectangle{
        id: frame
        anchors.top: parent.top
        anchors.topMargin: nDefaultSpace
        anchors.bottom: controlAll.top
        anchors.bottomMargin: nDefaultSpace
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace + vbar.width
        clip: true

        Column{
            id: allTitle
            z: 1
            anchors.top: parent.top
            anchors.topMargin: nDefaultSpace
            spacing: nDefaultSpace
            width: parent.width

            Image{
                height: 150
                width: 450
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/images/Logo.jpg"
            }

            SilkQmlRectangle{
                id: silkQmlRectangle
                height: 40
                width: parent.width - nDefaultSpace*2
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#e0e0e0"

                SilkQmlText{
                    id: silkQmlText
                    height: parent.height
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: defaultColor
                    hoverEnabled: true
                    text:qsTr("这是三峰驼演示程序")
                }
            }

            SilkQmlRectangle{
                height: 60
                width: parent.width - nDefaultSpace*2
                anchors.horizontalCenter: parent.horizontalCenter
                clip: true

                SilkQmlText{
                    id: text
                    height: contentHeight
                    width: parent.width - silkQmlScrollBar.width
                    y: -silkQmlScrollBar.position * height
                    horizontalAlignment: Text.AlignLeft
                    MouseArea{
                        anchors.fill: parent
                        onWheel: {
                            if (wheel.angleDelta.y > 0) {
                                silkQmlScrollBar.decrease();
                            }
                            else {
                                silkQmlScrollBar.increase();
                            }
                        }
                    }
                    color: defaultColor
                    text:qsTr("* 皮肤动态切换, 动态加载解析皮肤文件
* 直接集成到QtCreator中, 开发便利, 使用简单, 与原生Qml组件一样的直接使用
* 全局控件操作, 一行代码即可操作同类型的组件
* SVG图形换色, 一个SVG图片 切换各种颜色和大小
* 支持单峰驼数据库IDE直接修改皮肤文件
* 除了基础组件, 会不断更新出各种高级扩展控件, 自由选择
* 可完全使用皮肤文件, 工程不需要配额外的图形打包到qrc中
* 提供自定义功能, 比如checkbox的图标显示大小, 颜色, 位置
* 提供全套组件, 包括QtQuick.Controls 2.0缺少的很多组件, 如TableView
* 后续会出专有的皮肤文件编辑器
* 一行代码全局换肤
* 同类型组件全局控制
* 区域内组件全局控制
* 控件自适应窗体大小改变
* 支持保存配置, 如窗体大小位置等
* 更多功能策划中...")
                }

                SilkQmlScrollBar {
                    id: silkQmlScrollBar
                    hoverEnabled: true
                    active: true
                    orientation: Qt.Vertical
                    size: parent.height / text.height
                    width: 10
                    anchors.top: parent.top
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                }
            }
        }

        Column{
            id: allControl
            y: 300 + nDefaultSpace -vbar.position*height
            width: parent.width - nDefaultSpace*2
            anchors.left: parent.left
            anchors.leftMargin: nDefaultSpace
            spacing: nDefaultSpace
            clip: true

            Row{
                spacing: nDefaultSpace
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter

                SilkQmlCheckBox{
                    id: silkQmlCheckBox
                    width: 140
                    text:qsTr("已阅读相关内容")
                    color: defaultColor
                    checked: true
                    hoverEnabled: false
                }

                SilkQmlRadioButton{
                    id: silkQmlRadioButton
                    width: 60
                    text:qsTr("同意")
                    color: defaultColor
                    checked: true
                }

                SilkQmlRadioButton{
                    width: 60
                    color: defaultColor
                    text:qsTr("不同意")
                }
            }

            Row{
                spacing: nDefaultSpace
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter

                SilkQmlText{
                    height: 50
                    width: 60
                    color: defaultColor
                    text:qsTr("进度:")
                }

                SilkQmlSlider {
                    id: silkQmlSlider
                    height: 50
                    width: 200
                    from: 0
                    to: 100
                    value: 50
                    enabled: !silkQmlSwitch.checked
                }

                SilkQmlSwitch {
                    id: silkQmlSwitch
                    height: 50
                    width: 100
                    color: defaultColor
                    text: checked?qsTr("已锁定"):qsTr("未锁定")
                    indicator.height: 45
                    indicator.width: 50
                }
            }

            Row{
                height: 30
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace

                SilkQmlText{
                    height: 30
                    color: defaultColor
                    verticalAlignment: Text.AlignVCenter
                    text:qsTr("等级:")
                }

                SilkQmlComboBox {
                    id: silkQmlComboBox
                    height: 30
                    width: 90
                    model: [qsTr("普通"), qsTr("精英"), qsTr("卓越"), qsTr("传说"), qsTr("史诗"), qsTr("神话")]
                }

                SilkQmlText{
                    height: 30
                    verticalAlignment: Text.AlignVCenter
                    color: defaultColor
                    text:qsTr("数量:")
                }

                SilkQmlSpinBox{
                    id: silkQmlSpinBox
                    height: 30
                    color: defaultColor
                    from: 20
                    to: 150
                    value: 20
                }

                SilkQmlDelayButton {
                    id: silkQmlDelayButton
                    height: 30
                    width: 100
                    padding: 4
                }
            }

            Row{
                height: 30
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace

                SilkQmlProgressBar {
                    id: silkQmlProgressBar
                    height: 20
                    width: 420
                    anchors.verticalCenter: parent.verticalCenter
                    padding: 4
                    from: 0
                    to: 100
                    value: 50

                    Timer{
                        id: timer
                        running: false
                        repeat: true
                        interval: 20
                        onTriggered:{
                            parent.value++;
                            if (parent.value >= 100){
                                timer.running = false;
                            }
                        }
                    }
                }

                SilkQmlBusyIndicator {
                    id: silkQmlBusyIndicator
                    height: 60
                    width: 60
                    running: timer.running
                }
            }

            Row{
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace

                SilkQmlButton{
                    id: silkQmlButton
                    height: 40
                    text:qsTr("开始下载")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    color: defaultColor
                    onClicked: {
                        silkQmlProgressBar.value = 0;
                        timer.running = true;
                    }
                }

                SilkQmlButton{
                    height: 40
                    text:qsTr("取消")
                    color: defaultColor
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    s_imageName: "RedButton"
                    s_hoverColor: "#0000ee"
                    s_pressedColor: "#0000ff"
                    onClicked: {
                        timer.running = false;
                        silkQmlProgressBar.value = 0;
                        showMsg(qsTr("已取消"))
                    }
                }

                SilkQmlToolButton {
                    id: silkQmlToolButton
                    height: 40
                    width: 100
                    text: qsTr("按钮")
                    color: defaultColor
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    onClicked: {
                        showMsg(qsTr("触发了按钮"))
                    }
                }

                SilkQmlToolBar {

                    property alias btn1: btn1
                    property alias btn2: btn2

                    id: silkQmlToolBar
                    height: 40
                    width: 90
                    s_background: Rectangle {
                        implicitHeight: 40
                        color: "#eeeeee"

                        Rectangle {
                            width: parent.width
                            height: 1
                            anchors.bottom: parent.bottom
                            color: "transparent"
                            border.color: "#21be2b"
                        }
                    }

                    Row {
                        anchors.fill: parent

                        SilkQmlToolButton {
                            id: btn1
                            height: parent.height
                            width: parent.width/2
                            text: qsTr("确定")
                            font.family: "microsoft yahei"
                            font.pixelSize: 14
                            color: defaultColor
                            onClicked: {
                                showMsg(qsTr("点击了确认"))
                            }
                        }
                        SilkQmlToolButton {
                            id: btn2
                            height: parent.height
                            width: parent.width/2
                            text: qsTr("取消")
                            font.family: "microsoft yahei"
                            font.pixelSize: 14
                            color: defaultColor
                            onClicked: {
                                showMsg(qsTr("点击了取消"))
                            }
                        }
                    }

                }

                SilkQmlDial {
                    id: silkQmlDial
                    height: 40
                    width: 40
                }
            }

            Row{
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace

                SilkQmlButton {
                    height: 40
                    width: 100
                    text: qsTr("显示Tooltip")
                    color: defaultColor
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    SilkQmlToolTip{
                        text: qsTr("这是显示的Tooltip文字")
                    }
                }

                SilkQmlIPAddress{
                    height: 30
                    width: 150
                    anchors.verticalCenter: parent.verticalCenter
                    onTextChanged: showIP.text = text;
                }

                SilkQmlText{
                    id: showIP
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

    TestRectangle{
        id: controlAll
        height: 80
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace
        anchors.bottom: parent.bottom
        text: qsTr("三峰驼全局控制")
        Row{
            anchors.centerIn: parent

            SilkQmlCheckBox{
                text: qsTr("可用")
                width: 60
                checked: true
                s_outOfAll: true
                onCheckedChanged: {
                    SilkQmlCtrls.s_setAllEnabled(checked, frmWindow);
                }
            }

        }
    }

    ScrollBar {
        id: vbar
        width: 20
        active: true
        orientation: Qt.Vertical
        size: (frame.height - allTitle.height - nDefaultSpace*4) / allControl.height
        anchors.top: frame.top
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace/2
        anchors.bottom: controlAll.top
        anchors.bottomMargin: nDefaultSpace
    }
}
