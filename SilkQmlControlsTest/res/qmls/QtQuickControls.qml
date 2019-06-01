/*!
 *@file QtQuickControls.qml
 *@brief 原生Qml界面组件
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Controls 2.3
import Qt.labs.platform 1.0

Rectangle{
    property alias label: label
    property alias rectangle: rectangle
    property alias button: button
    property alias checkBox: checkBox
    property alias radioButton: radioButton
    property alias radioButton1: radioButton1
    property alias spinBox: spinBox
    property alias slider: slider
    property alias slider1: slider1
    property alias sswitch: sswitch
    property alias progressBar: progressBar
    property alias delayButton: delayButton
    property alias toolButton: toolButton
    property alias toolBar: toolBar
    property alias comboBox: comboBox
    property alias scrollBar: scrollBar
    property alias busyIndicator: busyIndicator
    property alias dial: dial
    property alias toolTip: toolTip
    property alias colorDialog: colorDialog
    property alias list: list
    property Item vbar: null
    property color defaultHoverColor: "#ff6464"
    property color defaultColor: "#000000"
    property color disabledColor: "#aaaaaa"

    property bool bShow: true

    function showMsg(text){
        msg.text = text;
        msg.open();
    }

    color: "transparent"

    MessageDialog{
        id: msg
        buttons: MessageDialog.Ok
    }

    Rectangle{
        anchors.fill: parent

        Column{
            id: list
            width: parent.width
            y: -vbar.position*height

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "Text"

                Text{
                    id: label
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: enabled?defaultColor:disabledColor
                    text: qsTr("测试的文字abc")
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "Rectangle"
                Rectangle{
                    id: rectangle
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    color: enabled?defaultColor:disabledColor
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "Button"
                Button{
                    id: button
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("按钮")
                    onClicked: {
                        showMsg(qsTr("触发了按钮"))
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "CheckBox"
                TestCheckBox {
                    id: checkBox
                    text: qsTr("复选框")
                    checked: false
                    anchors.centerIn: parent
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "RadioButton"

                Row{
                    anchors.centerIn: parent

                    TestRadioButton {
                        id: radioButton
                        text: qsTr("单选框")
                        checked: false
                    }
                    TestRadioButton {
                        id: radioButton1
                        text: qsTr("单选框")
                        checked: false
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SpinBox"

                Row{
                    anchors.centerIn: parent

                    SpinBox {
                        id: spinBox
                        height: 25
                        width: 75
                        editable: true
                        from: 0
                        to: 100
                        stepSize: 2
                        value: 50
                        contentItem: TextInput {
                            text: spinBox.textFromValue(spinBox.value, spinBox.locale)
                            font: spinBox.font
                            color: enabled?defaultColor:disabledColor
                            selectionColor: defaultColor
                            selectedTextColor: defaultColor
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            readOnly: !spinBox.editable
                            validator: spinBox.validator
                            inputMethodHints: Qt.ImhFormattedNumbersOnly
                            selectByMouse: true
                        }
                        background: Rectangle{
                            anchors.fill: parent
                            color: "transparent"
                        }
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "Slider"

                Row{
                    anchors.centerIn: parent

                    Slider {
                        id: slider
                        height: 25
                        width: 75
                        anchors.verticalCenter: parent.verticalCenter
                        from: 0
                        to: 100
                        value: 50
                        background: Rectangle {
                            x: slider.leftPadding
                            y: slider.topPadding + slider.availableHeight / 2 - height / 2
                            implicitWidth: 75
                            implicitHeight: 4
                            width: slider.availableWidth
                            height: implicitHeight
                            radius: 2
                            color: "#e0e0e0"

                            Rectangle {
                                width: slider.visualPosition * parent.width
                                height: parent.height
                                color: defaultColor
                                radius: 2
                            }
                        }
                    }

                    Slider {
                        id: slider1
                        height: 75
                        width: 25
                        from: 0
                        to: 100
                        value: 50
                        orientation : Qt.Vertical
                        background: Rectangle {
                            x: slider1.leftPadding + slider1.availableWidth / 2 - width / 2
                            y: slider1.topPadding
                            implicitWidth: 4
                            implicitHeight: 75
                            width: implicitWidth
                            height: slider1.availableHeight
                            radius: 2
                            color: "#e0e0e0"

                            Rectangle {
                                width: parent.width
                                height: slider1.visualPosition * parent.height
                                color: defaultColor
                                radius: 2
                            }
                        }
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "Switch"

                Switch{
                    id: sswitch
                    height: 25
                    width: 75
                    anchors.centerIn: parent
                    text: sswitch.checked?qsTr("开"):qsTr("关")

                    indicator: Rectangle {
                        implicitWidth: 48
                        implicitHeight: 26
                        x: sswitch.leftPadding
                        y: parent.height / 2 - height / 2
                        radius: 13
                        color: sswitch.checked ? defaultColor: "#ffffff"
                        border.color: sswitch.checked ? defaultColor : "#cccccc"

                        Rectangle {
                            x: sswitch.checked ? parent.width - width : 0
                            width: 26
                            height: 26
                            radius: 13
                            color: sswitch.down ? "#cccccc" : "#ffffff"
                            border.color: sswitch.checked ? (sswitch.down ? defaultColor : "#21be2b") : "#999999"
                        }
                    }

                    contentItem: Text {
                        text: sswitch.text
                        font: sswitch.font
                        opacity: enabled ? 1.0 : 0.3
                        color: sswitch.down ? "red" : defaultColor
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: sswitch.indicator.width + sswitch.spacing
                    }
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "ProgressBar"

                ProgressBar{
                    id: progressBar
                    height: 20
                    width: 100
                    anchors.centerIn: parent
                    padding: 4
                    from: 0
                    to: 1
                    value: 1

                    background: Rectangle {
                        anchors.fill: parent
                        color: "#e0e0e0"
                        radius: 3
                    }

                    contentItem: Rectangle {
                        width: parent.visualPosition * (parent.width - parent.padding*2)
                        height: parent.height
                        radius: 2
                        color: defaultColor
                    }
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "DelayButton"

                DelayButton{
                    id: delayButton
                    height: 20
                    width: 100
                    anchors.centerIn: parent
                    padding: 4
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "ToolButton"

                ToolButton{
                    id: toolButton
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("按钮")
                    onClicked: {
                        showMsg(qsTr("触发了按钮"))
                    }
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "ToolBar"

                ToolBar {

                    property alias btn1: btn1
                    property alias btn2: btn2

                    id: toolBar
                    height: 40
                    width: 90
                    anchors.centerIn: parent
                    background: Rectangle {
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

                        ToolButton {
                            id: btn1
                            height: parent.height
                            width: parent.width/2
                            text: qsTr("确定")
                            onClicked: {
                                showMsg(qsTr("点击了确认"))
                            }
                        }
                        ToolButton {
                            id: btn2
                            height: parent.height
                            width: parent.width/2
                            text: qsTr("取消")
                            onClicked: {
                                showMsg(qsTr("点击了取消"))
                            }
                        }
                    }
                }
            }


            TestRectangle{
                visible: true
                width: parent.width
                text: "ComboBox"

                ComboBox {
                    id: comboBox
                    height: 40
                    width: 90
                    anchors.centerIn: parent
                    model: [qsTr("项目1"), qsTr("项目2"), qsTr("项目3")]
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "ScrollBar"
                focus: true

                Keys.onUpPressed: scrollBar.decrease()
                Keys.onDownPressed: scrollBar.increase()

                Rectangle{
                    height: parent.height/3
                    width: parent.width*2/3
                    anchors.centerIn: parent
                    clip: true
                    color: "#eeeeee"

                    TextEdit {
                        id: textEdit
                        text: "ABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKLABCDEFGHIJKL"
                        font.pointSize: 14
                        height: contentHeight
                        width: parent.width - scrollBar.width
                        y: -scrollBar.position * textEdit.height
                        wrapMode: TextEdit.Wrap
                        selectByKeyboard: true
                        selectByMouse: true

                        MouseArea{
                            enabled: scrollBar.enabled
                            anchors.fill: parent
                            onWheel: {
                                if (wheel.angleDelta.y > 0) {
                                    scrollBar.decrease();
                                }
                                else {
                                    scrollBar.increase();
                                }
                            }
                            onClicked: {
                                textEdit.forceActiveFocus();
                            }
                        }
                    }

                    ScrollBar {
                        id: scrollBar
                        hoverEnabled: true
                        active: hovered || pressed
                        orientation: Qt.Vertical
                        size: parent.height / textEdit.height
                        width: 10
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                    }
                }
            }


            TestRectangle{
                visible: true
                height: 120
                width: parent.width
                text: "BusyIndicator"

                BusyIndicator {
                    id: busyIndicator
                    height: 60
                    width: 60
                    anchors.centerIn: parent
                    running: true
                }
            }


            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "Dial"

                Dial {
                    id: dial
                    height: 80
                    width: 80
                    anchors.centerIn: parent
                }
            }

            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "ToolTip"

                Button {
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("显示Tooltip")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    ToolTip{
                        id: toolTip
                        visible: parent.hovered && enabled
                        text: qsTr("这是显示的Tooltip文字")
                    }
                }
            }

            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "IPAddress"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("无")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                }
            }

            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "Dialog"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("无")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                }
            }

            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "ColorDialog"

                Row{
                    anchors.centerIn: parent
                    spacing: 6

                    Button {
                        height: 40
                        width: 100
                        text: qsTr("选择颜色")
                        font.family: "microsoft yahei"
                        font.pixelSize: 14
                        onClicked: {
                            colorDialog.open();
                        }
                    }

                    Rectangle {
                        id: colorRectangle
                        height: 40
                        width: 100
                        color: "red"
                        border.color: "#21be2b"
                        border.width: 1
                    }
                }

                ColorDialog {
                    id: colorDialog
                    title: qsTr("选择颜色")
                    color: defaultColor
                    onAccepted: {
                        colorRectangle.color = color;
                    }
                }
            }




        }
    }
}
