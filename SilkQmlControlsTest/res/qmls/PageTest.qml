import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Rectangle{
    property alias vbar: vbar
    property int nDefaultSpace: 12
    property color defaultColor: "#000000"
    property color disabledColor: "#aaaaaa"

    id: frmWindow
    color: "transparent"

    Rectangle{
        id: title
        height: 30
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace
        anchors.right: parent.right
        anchors.top: parent.top
        color: "transparent"

        Row{
            anchors.fill: parent
            spacing: nDefaultSpace

            Text{
                height: parent.height
                width:(parent.width - nDefaultSpace*2 - vbar.width)/4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: enabled?defaultColor:disabledColor
                text: qsTr("原生Qml界面组件")
                font.bold: true
                font.pixelSize: 14
            }

            SilkQmlText{
                height: parent.height
                width: (parent.width - nDefaultSpace*2 - vbar.width)/4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: qsTr("三峰驼界面组件")
                font.bold: true
                font.pixelSize: 14
            }

            SilkQmlText{
                height: parent.height
                width: (parent.width - nDefaultSpace*2 - vbar.width)/2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: qsTr("参数调整")
                font.bold: true
                font.pixelSize: 14
            }
        }
    }

    Rectangle{
        id: frame
        anchors.top: title.bottom
        anchors.bottom: controlAll.top
        anchors.bottomMargin: nDefaultSpace
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace
        color: "transparent"
        clip: true

        Row{
            anchors.fill: parent
            spacing: nDefaultSpace

            QtQuickControls{
                id: qtQuickControls
                vbar: vbar
                height: parent.height
                width: (parent.width - nDefaultSpace*2 - vbar.width)/4
            }

            SilkQmlControls{
                id: silkQmlControls
                vbar: vbar
                height: parent.height
                width: (parent.width - nDefaultSpace*2 - vbar.width)/4
            }

            TestParameter{
                height: parent.height
                width: (parent.width - nDefaultSpace*2 - vbar.width)/2
                label: qtQuickControls.label
                silkQmlText: silkQmlControls.silkQmlText
                rectangle: qtQuickControls.rectangle
                silkQmlRectangle: silkQmlControls.silkQmlRectangle
                button: qtQuickControls.button
                silkQmlButton: silkQmlControls.silkQmlButton
                checkBox: qtQuickControls.checkBox
                silkQmlCheckBox: silkQmlControls.silkQmlCheckBox
                radioButton: qtQuickControls.radioButton
                silkQmlRadioButton: silkQmlControls.silkQmlRadioButton
                radioButton1: qtQuickControls.radioButton1
                silkQmlRadioButton1: silkQmlControls.silkQmlRadioButton1
                spinBox: qtQuickControls.spinBox
                silkQmlSpinBox: silkQmlControls.silkQmlSpinBox
                slider: qtQuickControls.slider
                slider1: qtQuickControls.slider1
                silkQmlSlider: silkQmlControls.silkQmlSlider
                silkQmlSlider1: silkQmlControls.silkQmlSlider1
                sswitch: qtQuickControls.sswitch
                silkQmlSwitch: silkQmlControls.silkQmlSwitch
                progressBar: qtQuickControls.progressBar
                silkQmlProgressBar: silkQmlControls.silkQmlProgressBar
                delayButton: qtQuickControls.delayButton
                silkQmlDelayButton: silkQmlControls.silkQmlDelayButton
                toolButton: qtQuickControls.toolButton
                silkQmlToolButton: silkQmlControls.silkQmlToolButton
                toolBar: qtQuickControls.toolBar
                silkQmlToolBar: silkQmlControls.silkQmlToolBar
                comboBox: qtQuickControls.comboBox
                silkQmlComboBox: silkQmlControls.silkQmlComboBox
                scrollBar: qtQuickControls.scrollBar
                silkQmlScrollBar: silkQmlControls.silkQmlScrollBar
                busyIndicator: qtQuickControls.busyIndicator
                silkQmlBusyIndicator: silkQmlControls.silkQmlBusyIndicator
                dial: qtQuickControls.dial
                silkQmlDial: silkQmlControls.silkQmlDial
                toolTip: qtQuickControls.toolTip
                silkQmlToolTip: silkQmlControls.silkQmlToolTip
                silkQmlIPAddress: silkQmlControls.silkQmlIPAddress
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
        size: frame.height / qtQuickControls.list.height
        anchors.top: frame.top
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace/2
        anchors.bottom: controlAll.top
        anchors.bottomMargin: nDefaultSpace
    }
}
