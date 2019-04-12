import QtQuick 2.7
import QtQuick.Controls 2.3
import Qt.labs.platform 1.0
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Rectangle{
    property alias silkQmlText: silkQmlText
    property alias silkQmlRectangle: silkQmlRectangle
    property alias silkQmlButton: silkQmlButton
    property alias silkQmlCheckBox: silkQmlCheckBox
    property alias silkQmlRadioButton: silkQmlRadioButton
    property alias silkQmlRadioButton1: silkQmlRadioButton1
    property alias silkQmlSpinBox: silkQmlSpinBox
    property alias silkQmlSlider: silkQmlSlider
    property alias silkQmlSlider1: silkQmlSlider1
    property alias silkQmlSwitch: silkQmlSwitch
    property alias silkQmlProgressBar: silkQmlProgressBar
    property alias silkQmlDelayButton: silkQmlDelayButton
    property alias silkQmlToolButton: silkQmlToolButton
    property alias silkQmlToolBar: silkQmlToolBar
    property alias silkQmlComboBox: silkQmlComboBox
    property alias silkQmlScrollBar: silkQmlScrollBar
    property alias silkQmlBusyIndicator: silkQmlBusyIndicator
    property alias silkQmlDial: silkQmlDial
    property alias silkQmlToolTip: silkQmlToolTip
    property alias silkQmlIPAddress: silkQmlIPAddress
    property Item vbar: null
    property color defaultHoverColor: "#ff6464"
    property color defaultColor: "#000000"
    property color disabledColor: "#aaaaaa"

    property bool bShow: true

    function showMsg(text){
        msg.text = text;
        msg.open();
    }

    id: frmWindow
    color: "transparent"

    MessageDialog{
        id: msg
        buttons: MessageDialog.Ok
    }

    Rectangle{
        anchors.fill: parent

        Column{
            id: listSilk
            width: parent.width
            y: -vbar.position*height

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlText"
                SilkQmlText{
                    id: silkQmlText
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    hoverEnabled: true
                    text: qsTr("测试的文字abc")
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlRectangle"
                SilkQmlRectangle{
                    id:silkQmlRectangle
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    color: defaultColor
                    hoverEnabled: true
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlButton"
                SilkQmlButton{
                    id: silkQmlButton
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("按钮")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    onClicked: {
                        showMsg(qsTr("触发了按钮"))
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlCheckBox"

                SilkQmlCheckBox {
                    id: silkQmlCheckBox
                    height: 40
                    width: 80
                    text: qsTr("复选框")
                    checked: true
                    anchors.centerIn: parent
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlRadioButton"

                Row{
                    anchors.centerIn: parent

                    SilkQmlRadioButton {
                        id: silkQmlRadioButton
                        height: 40
                        width: 80
                        text: qsTr("单选框")
                        checked: false
                    }
                    SilkQmlRadioButton {
                        id: silkQmlRadioButton1
                        height: 40
                        width: 80
                        text: qsTr("单选框")
                        checked: false
                    }
                }
            }


            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlSpinBox"

                Row{
                    anchors.centerIn: parent

                    SilkQmlSpinBox {
                        id: silkQmlSpinBox
                        editable: true
                        from: 0
                        to: 100
                        stepSize: 2
                        value: 50
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlSlider"

                Row{
                    anchors.centerIn: parent

                    SilkQmlSlider {
                        id: silkQmlSlider
                        height: 25
                        width: 75
                        from: 0
                        to: 100
                        value: 50
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    SilkQmlSlider {
                        id: silkQmlSlider1
                        height: 75
                        width: 25
                        from: 0
                        to: 100
                        value: 50
                        orientation : Qt.Vertical
                    }
                }
            }

            TestRectangle{
                visible: bShow
                width: parent.width
                text: "SilkQmlSwitch"

                SilkQmlSwitch {
                    id: silkQmlSwitch
                    height: 50
                    width: 75
                    anchors.centerIn: parent
                    text: checked?qsTr("开"):qsTr("关")
                    indicator.height: 45
                    indicator.width: 50
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "SilkQmlProgressBar"

                SilkQmlProgressBar {
                    id: silkQmlProgressBar
                    height: 20
                    width: 100
                    anchors.centerIn: parent
                    padding: 4
                    from: 0
                    to: 1
                    value: 1
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "SilkQmlDelayButton"

                SilkQmlDelayButton {
                    id: silkQmlDelayButton
                    height: 20
                    width: 100
                    anchors.centerIn: parent
                    padding: 4
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "SilkQmlToolButton"

                SilkQmlToolButton {
                    id: silkQmlToolButton
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("按钮")
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    onClicked: {
                        showMsg(qsTr("触发了按钮"))

                    }
                }
            }

            TestRectangle{
                visible: true
                width: parent.width
                text: "SilkQmlToolBar"

                SilkQmlToolBar {

                    property alias btn1: btn1
                    property alias btn2: btn2

                    id: silkQmlToolBar
                    height: 40
                    width: 90
                    anchors.centerIn: parent
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
                            onClicked: {
                                showMsg(qsTr("点击了确认"))
                            }
                        }
                        SilkQmlToolButton {
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
                text: "SilkQmlComboBox"

                SilkQmlComboBox {
                    id: silkQmlComboBox
                    height: 40
                    width: 90
                    anchors.centerIn: parent
                    model: [qsTr("项目1"), qsTr("项目2"), qsTr("项目3")]
                }
            }


            TestRectangle{
                visible: true
                width: parent.width
                text: "SilkQmlScrollBar"
                focus: true

                Keys.onUpPressed: silkQmlScrollBar.decrease()
                Keys.onDownPressed: silkQmlScrollBar.increase()

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
                        width: parent.width - silkQmlScrollBar.width
                        y: -silkQmlScrollBar.position * textEdit.height
                        wrapMode: TextEdit.Wrap
                        selectByKeyboard: true
                        selectByMouse: true

                        MouseArea{
                            enabled: silkQmlScrollBar.enabled
                            anchors.fill: parent
                            onWheel: {
                                if (wheel.angleDelta.y > 0) {
                                    silkQmlScrollBar.decrease();
                                }
                                else {
                                    silkQmlScrollBar.increase();
                                }
                            }
                            onClicked: {
                                textEdit.forceActiveFocus();
                            }
                        }
                    }

                    SilkQmlScrollBar {
                        id: silkQmlScrollBar
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
                text: "SilkQmlBusyIndicator"

                SilkQmlBusyIndicator {
                    id: silkQmlBusyIndicator
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
                text: "SilkQmlDial"

                SilkQmlDial {
                    id: silkQmlDial
                    height: 80
                    width: 80
                    anchors.centerIn: parent
                }
            }

            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "SilkQmlToolTip"

                SilkQmlButton {
                    height: 40
                    width: 100
                    anchors.centerIn: parent
                    text: qsTr("显示Tooltip")
                    color: defaultColor
                    font.family: "microsoft yahei"
                    font.pixelSize: 14
                    SilkQmlToolTip{
                        id: silkQmlToolTip
                        s_showDelay: 1000
                        text: qsTr("这是显示的Tooltip文字")
                    }
                }
            }


            TestRectangle{
                visible: true
                height: 150
                width: parent.width
                text: "SilkQmlIPAddress"

                Column{
                    anchors.centerIn: parent

                    SilkQmlIPAddress {
                        id: silkQmlIPAddress
                        height: 30
                        width: 150
                        anchors.horizontalCenter: parent.horizontalCenter
                        onTextChanged: showIP.text = text;
                    }
                    SilkQmlText{
                        id: showIP
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
            }


        }
    }
}
