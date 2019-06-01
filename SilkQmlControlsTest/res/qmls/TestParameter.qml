/*!
 *@file TestParameter.qml
 *@brief 参数调整
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import Qt.labs.platform 1.0
import SilkQmlControls 1.0

Rectangle{
    property int nDefaultSpace: 10
    property int nShowColorIndex: 0

    function showColor(index){
        nShowColorIndex = index;
        colorDialog.open();
    }

    Text{id: item}
    property Item label: item
    property Item silkQmlText: item
    property Item rectangle: item
    property Item silkQmlRectangle: item
    property Item button: item
    property Item silkQmlButton: item
    property Item checkBox: item
    property Item silkQmlCheckBox: item
    property Item radioButton: item
    property Item silkQmlRadioButton: item
    property Item radioButton1: item
    property Item silkQmlRadioButton1: item
    property Item spinBox: item
    property Item silkQmlSpinBox: item
    property Item slider: item
    property Item slider1: item
    property Item silkQmlSlider: item
    property Item silkQmlSlider1: item
    property Item sswitch: item
    property Item silkQmlSwitch: item
    property Item progressBar: item
    property Item silkQmlProgressBar: item
    property Item delayButton: item
    property Item silkQmlDelayButton: item
    property Item toolButton: item
    property Item silkQmlToolButton: item
    property Item toolBar: item
    property Item silkQmlToolBar: item
    property Item comboBox: item
    property Item silkQmlComboBox: item
    property Item scrollBar: item
    property Item silkQmlScrollBar: item
    property Item busyIndicator: item
    property Item silkQmlBusyIndicator: item
    property Item dial: item
    property Item silkQmlDial: item
    property ToolTip toolTip: item
    property Item silkQmlToolTip: item
    property Item silkQmlIPAddress: item
    property Item silkQmlDialog: item
    property Item silkQmlColorDialog: item
    property color defaultHoverColor: "#ff6464"
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"

    property bool bShow: true

    height: parent.height
    width: (parent.width - nDefaultSpace - vbar.width)/2
    color: "transparent"

    ColorDialog {
        id: colorDialog
        title: qsTr("选择颜色")
        color: defaultColor
        onAccepted: {
            switch(nShowColorIndex)
            {
            case 0:
                label.color = colorDialog.color;
                silkQmlText.color = colorDialog.color;
                break;
            case 1:
                rectangle.color = colorDialog.color;
                silkQmlRectangle.color = colorDialog.color;
                break;
            case 2:
                button.contentItem.color = colorDialog.color;
                silkQmlButton.color = colorDialog.color;
                break;
            case 3:
                checkBox.contentItem.color = colorDialog.color;
                silkQmlCheckBox.color = colorDialog.color;
                break;
            case 4:
                silkQmlCheckBox.indicator.color = colorDialog.color;
                break;
            case 5:
                radioButton.contentItem.color = colorDialog.color;
                silkQmlRadioButton.color = colorDialog.color;
                radioButton1.contentItem.color = colorDialog.color;
                silkQmlRadioButton1.color = colorDialog.color;
                break;
            case 6:
                silkQmlRadioButton.indicator.color = colorDialog.color;
                silkQmlRadioButton1.indicator.color = colorDialog.color;
                break;
            case 7:
                spinBox.contentItem.color = colorDialog.color;
                silkQmlSpinBox.color = colorDialog.color;
                break;
            case 8:
                silkQmlSpinBox.downIndicator.color = colorDialog.color;
                silkQmlSpinBox.upIndicator.color = colorDialog.color;
                break;
            case 9:
                silkQmlSlider.handle.color = colorDialog.color;
                silkQmlSlider1.handle.color = colorDialog.color;
                break;
            case 10:
                silkQmlSlider.indicator.color = colorDialog.color;
                silkQmlSlider1.indicator.color = colorDialog.color;
                break;
            case 11:
                silkQmlSwitch.color = colorDialog.color;
                break;
            case 12:
                silkQmlSwitch.indicator.color = colorDialog.color;
                break;
            case 13:
                progressBar.contentItem.color = colorDialog.color;
                silkQmlProgressBar.contentItem.color = colorDialog.color;
                break;
            case 14:
                progressBar.background.color = colorDialog.color;
                silkQmlProgressBar.background.color = colorDialog.color;
                break;
            case 15:
                delayButton.background.color = colorDialog.color;
                silkQmlDelayButton.background.color = colorDialog.color;
                break;
            case 16:
                toolButton.contentItem.color = colorDialog.color;
                silkQmlToolButton.contentItem.color = colorDialog.color;
                break;
            case 17:
                toolBar.btn1.contentItem.color = colorDialog.color;
                toolBar.btn2.contentItem.color = colorDialog.color;
                silkQmlToolBar.btn1.color = colorDialog.color;
                silkQmlToolBar.btn2.color = colorDialog.color;
                break;
            case 18:

                break;
            }
        }
    }

    function showSlider(type, index, value){
        switch(type)
        {
        case 0:
            switch(index)
            {
            case 0:
                label.font.pixelSize = value;
                silkQmlText.font.pixelSize = value;
                break;
            case 1:
                label.opacity = value;
                silkQmlText.opacity = value;
                break;
            }
            break;
        case 1:
            switch(index)
            {
            case 0:
                rectangle.radius = value;
                silkQmlRectangle.radius = value;
                break;
            case 1:
                rectangle.opacity = value;
                silkQmlRectangle.opacity = value;
                break;
            }
            break;
        case 2:
            switch(index)
            {
            case 0:
                if (button.contentItem === undefined) return
                button.contentItem.font.pixelSize = value;
                silkQmlButton.font.pixelSize = value;
                break;
            case 1:
                button.opacity = value;
                silkQmlButton.opacity = value;
                break;
            }
            break;
        case 3:
            switch(index)
            {
            case 0:
                if (checkBox.contentItem === undefined) return
                checkBox.contentItem.font.pixelSize = value;
                silkQmlCheckBox.font.pixelSize = value;
                break;
            case 1:
                checkBox.opacity = value;
                silkQmlCheckBox.opacity = value;
                break;
            }
            break;
        case 4:
            switch(index)
            {
            case 0:
                if (radioButton.contentItem === undefined) return
                radioButton.contentItem.font.pixelSize = value;
                silkQmlRadioButton.font.pixelSize = value;
                if (radioButton1.contentItem === undefined) return
                radioButton1.contentItem.font.pixelSize = value;
                silkQmlRadioButton1.font.pixelSize = value;
                break;
            case 1:
                radioButton.opacity = value;
                silkQmlRadioButton.opacity = value;
                radioButton1.opacity = value;
                silkQmlRadioButton1.opacity = value;
                break;
            }
            break;
        case 5:
            switch(index)
            {
            case 0:
                if (spinBox.contentItem === undefined) return
                spinBox.contentItem.font.pixelSize = value;
                silkQmlSpinBox.contentItem.font.pixelSize = value;
                break;
            case 1:
                spinBox.opacity = value;
                silkQmlSpinBox.opacity = value;
                break;
            }
            break;
        case 6:
            switch(index)
            {
            case 0:
                break;
            case 1:
                slider.opacity = value;
                slider1.opacity = value;
                silkQmlSlider.opacity = value;
                silkQmlSlider1.opacity = value;
                break;
            }
            break;
        case 7:
            switch(index)
            {
            case 0:
                if (sswitch.contentItem === undefined) return
                sswitch.contentItem.font.pixelSize = value;
                silkQmlSwitch.contentItem.font.pixelSize = value;
                break;
            case 1:
                sswitch.opacity = value;
                silkQmlSwitch.opacity = value;
                break;
            }
            break;
        case 8:
            switch(index)
            {
            case 1:
                if (progressBar.contentItem === undefined) return
                progressBar.opacity = value;
                silkQmlProgressBar.opacity = value;
                break;
            case 2:
                if (progressBar.contentItem === undefined) return
                progressBar.value = value;
                silkQmlProgressBar.value = value;
                break;
            }
            break;
        case 9:
            switch(index)
            {
            case 1:
                delayButton.opacity = value;
                silkQmlDelayButton.opacity = value;
                break;
            case 2:
                if (delayButton === undefined) return
                if (delayButton.progress === undefined) return
                delayButton.progress = value;
                silkQmlDelayButton.progress = value;
                break;
            }
            break;
        case 10:
            switch(index)
            {
            case 0:
                if (toolButton.contentItem === undefined) return
                toolButton.contentItem.font.pixelSize = value;
                silkQmlToolButton.contentItem.font.pixelSize = value;
                break;
            case 1:
                toolButton.opacity = value;
                silkQmlToolButton.opacity = value;
                break;
            }
            break;
        case 11:
            switch(index)
            {
            case 0:
                if (toolBar.contentItem === undefined) return
                toolBar.btn1.contentItem.font.pixelSize = value;
                toolBar.btn2.contentItem.font.pixelSize = value;
                silkQmlToolBar.btn1.font.pixelSize = value;
                silkQmlToolBar.btn2.font.pixelSize = value;
                break;
            case 1:
                toolBar.opacity = value;
                silkQmlToolBar.opacity = value;
                break;
            }
            break;
        }
    }

    Rectangle{
        anchors.fill: parent

        Column{
            id: listCtrl
            width: parent.width
            y: -vbar.position*height

            TestRectangle{//Text
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: textRow.width
                clip: true

                Row{
                    id: textRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("字体颜色")
                        onClicked: {
                            showColor(0);
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(0, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(0, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 60
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            label.enabled = checked;
                            silkQmlText.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//rectangle
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: rectangleRow.width
                clip: true

                Row{
                    id: rectangleRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("方框颜色")
                        onClicked: {
                            showColor(1);
                        }
                    }

                    TestSlider{
                        text: qsTr("圆角")
                        to: 40
                        onSValueChanged:{
                            showSlider(1, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(1, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            rectangle.enabled = checked;
                            silkQmlRectangle.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//Button
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: buttonRow.width
                clip: true

                Row{
                    id: buttonRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("字体颜色")
                        onClicked: {
                            showColor(2);
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(2, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(2, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            button.enabled = checked;
                            silkQmlButton.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//Checkbox
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: checkboxRow.width
                clip: true

                Row{
                    id: checkboxRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("字体颜色")
                            onClicked: {
                                showColor(3);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("选框颜色")
                            onClicked: {
                                showColor(4);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(3, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(3, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            checkBox.enabled = checked;
                            silkQmlCheckBox.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//RadioButton
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: radioButtonRow.width
                clip: true

                Row{
                    id: radioButtonRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("字体颜色")
                            onClicked: {
                                showColor(5);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("选框颜色")
                            onClicked: {
                                showColor(6);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(4, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(4, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            radioButton.enabled = checked;
                            silkQmlRadioButton.enabled = checked;
                            radioButton1.enabled = checked;
                            silkQmlRadioButton1.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//SpinBox
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: spinBoxRow.width
                clip: true

                Row{
                    id: spinBoxRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("字体颜色")
                            onClicked: {
                                showColor(7);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("加减框颜色")
                            onClicked: {
                                showColor(8);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(5, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(5, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            spinBox.enabled = checked;
                            silkQmlSpinBox.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//Slider
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: sliderBarRow.width
                clip: true

                Row{
                    id: sliderBarRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("拖动圆颜色")
                            onClicked: {
                                showColor(9);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("背景条颜色")
                            onClicked: {
                                showColor(10);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(6, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            slider.enabled = checked;
                            slider1.enabled = checked;
                            silkQmlSlider.enabled = checked;
                            silkQmlSlider1.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//Switch
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: switchBarRow.width
                clip: true

                Row{
                    id: switchBarRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("字体颜色")
                            onClicked: {
                                showColor(11);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("背景条颜色")
                            onClicked: {
                                showColor(12);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(7, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(7, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            sswitch.enabled = checked;
                            silkQmlSwitch.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//ProgressBar
                visible: true
                width: parent.width
                text: qsTr("")
                contentWidth: progressBarRow.width
                clip: true

                Row{
                    id: progressBarRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("进度条颜色")
                            onClicked: {
                                showColor(13);
                            }
                        }

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("背景条颜色")
                            onClicked: {
                                showColor(14);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("进度值")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(8, 2, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(8, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            progressBar.enabled = checked;
                            silkQmlProgressBar.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//DelayButton
                visible: true
                width: parent.width
                text: qsTr("")
                contentWidth: delayButtonRow.width
                clip: true

                Row{
                    id: delayButtonRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Column{
                        spacing: nDefaultSpace/2

                        SilkQmlButton{
                            height: 35
                            width: 90
                            text: qsTr("背景条颜色")
                            onClicked: {
                                showColor(15);
                            }
                        }
                    }

                    TestSlider{
                        text: qsTr("进度值")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(9, 2, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(9, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            delayButton.enabled = checked;
                            silkQmlDelayButton.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//ToolButton
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: toolButtonRow.width
                clip: true

                Row{
                    id: toolButtonRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("字体颜色")
                        onClicked: {
                            showColor(16);
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(10, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(10, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            toolButton.enabled = checked;
                            silkQmlToolButton.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//ToolBar
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: toolBarRow.width
                clip: true

                Row{
                    id: toolBarRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("字体颜色")
                        onClicked: {
                            showColor(17);
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(11, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(11, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            toolBar.enabled = checked;
                            silkQmlToolBar.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//ComboBox
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: comboBoxRow.width
                clip: true

                Row{
                    id: comboBoxRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlButton{
                        height: 35
                        width: 90
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("字体颜色")
                        onClicked: {
                            showColor(18);
                        }
                    }

                    TestSlider{
                        text: qsTr("字体大小")
                        from: 9
                        to: 72
                        value: 16
                        onSValueChanged:{
                            showSlider(12, 0, value);
                        }
                    }

                    TestSlider{
                        text: qsTr("透明度")
                        from: 0.0
                        to: 1.0
                        value: 1.0
                        onSValueChanged:{
                            showSlider(12, 1, value);
                        }
                    }

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            comboBox.enabled = checked;
                            silkQmlComboBox.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//ScrollBar
                visible: bShow
                width: parent.width
                text: qsTr("")
                contentWidth: scrollBarRow.width
                clip: true

                Row{
                    id: scrollBarRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            scrollBar.enabled = checked;
                            silkQmlScrollBar.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//BusyIndicator
                visible: bShow
                height: 120
                width: parent.width
                text: qsTr("")
                contentWidth: busyIndicatorRow.width
                clip: true

                Row{
                    id: busyIndicatorRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("运行")
                        checked: true
                        onCheckedChanged: {
                            busyIndicator.running = checked;
                            silkQmlBusyIndicator.running = checked;
                        }
                    }
                }
            }

            TestRectangle{//Dial
                visible: bShow
                height: 150
                width: parent.width
                text: qsTr("")
                contentWidth: dialRow.width
                clip: true

                Row{
                    id: dialRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            dial.enabled = checked;
                            silkQmlDial.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//Tooltip
                visible: bShow
                height: 150
                width: parent.width
                text: qsTr("")
                contentWidth: tooltipRow.width
                clip: true

                Row{
                    id: tooltipRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            toolTip.enabled = checked;
                            silkQmlToolTip.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//IPAddress
                visible: bShow
                height: 150
                width: parent.width
                text: qsTr("")
                contentWidth: iPAddressRow.width
                clip: true

                Row{
                    id: iPAddressRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            silkQmlIPAddress.enabled = checked;
                        }
                    }
                }
            }


            TestRectangle{//Dialog
                visible: bShow
                height: 150
                width: parent.width
                text: qsTr("")
                contentWidth: dialogRow.width
                clip: true

                Row{
                    id: dialogRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            silkQmlDialog.enabled = checked;
                        }
                    }
                }
            }

            TestRectangle{//ColorDialog
                visible: bShow
                height: 150
                width: parent.width
                text: qsTr("")
                contentWidth: colorDialogRow.width
                clip: true

                Row{
                    id: colorDialogRow
                    x: nDefaultSpace/2-parent.hbar.position*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    SilkQmlCheckBox {
                        height: 40
                        width: 70
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("可用")
                        checked: true
                        onCheckedChanged: {
                            silkQmlColorDialog.enabled = checked;
                        }
                    }
                }
            }



        }
    }
}
