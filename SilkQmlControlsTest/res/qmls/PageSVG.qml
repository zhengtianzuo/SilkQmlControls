import QtQuick 2.7
import QtQuick.Controls 2.3
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Rectangle{
    property alias vbar: vbar
    property int nDefaultSpace: 12
    property color defaultColor: "#148014"
    property int nSColor: -1
    property int nSHColor: -1
    property int nSPColor: -1
    property int nSDColor: -1

    id: frmWindow
    color: "transparent"

    Rectangle{
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
            id: allControl
            y: nDefaultSpace -vbar.position*height
            width: parent.width - nDefaultSpace*2
            anchors.centerIn: parent
            spacing: nDefaultSpace

            Row{
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace*2

                SilkQmlButton{
                    id: silkQmlButton
                    height: 32
                    width: 32
                    s_imageName: "SVG"
                }

                SilkQmlCheckBox {
                    id: silkQmlCheckBox
                    height: 40
                    width: 80
                    text: qsTr("复选框")
                    checked: true
                }

                SilkQmlRadioButton {
                    id: silkQmlRadioButton
                    height: 40
                    width: 80
                    text: qsTr("单选框1")
                    checked: true
                }

                SilkQmlRadioButton {
                    id: silkQmlRadioButton1
                    height: 40
                    width: 80
                    text: qsTr("单选框2")
                    checked: false
                }

                SilkQmlSpinBox {
                    id: silkQmlSpinBox
                    height: 40
                    editable: true
                    from: 0
                    to: 100
                    stepSize: 2
                    value: 50
                }
            }

            Row{
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace*2

                SilkQmlSlider {
                    id: silkQmlSlider
                    height: 40
                    width: 120
                    from: 0
                    to: 100
                    value: 50
                }

                SilkQmlSwitch {
                    id: silkQmlSwitch
                    height: 40
                    width: 75
                    text: checked?qsTr("开"):qsTr("关")
                    indicator.height: 45
                    indicator.width: 50
                }

                SilkQmlProgressBar {
                    id: silkQmlProgressBar
                    height: 20
                    width: 120
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    padding: 4
                    from: 0
                    to: 1
                    value: 0.8
                }
            }
        }
    }

    TestRectangle{
        id: controlAll
        height: 90
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
                anchors.verticalCenter: parent.verticalCenter
                checked: true
                s_outOfAll: true
                onCheckedChanged: {
                    SilkQmlCtrls.s_setAllEnabled(checked, frmWindow);
                }
            }

            ListModel {
                id: colorList
                ListElement { color: "red" }
                ListElement { color: "orange" }
                ListElement { color: "gold" }
                ListElement { color: "green" }
                ListElement { color: "cyan" }
                ListElement { color: "blue" }
                ListElement { color: "violet" }
            }

            Rectangle{
                height: 40
                width: 140+(80+nDefaultSpace/2)*7+nDefaultSpace
                color: "transparent"
                border.color: defaultColor
                border.width: 1

                Row{
                    height: 30
                    spacing: nDefaultSpace/2
                    anchors.centerIn: parent

                    SilkQmlComboBox {
                        id: silkQmlComboBox
                        height: 30
                        width: 140
                        anchors.verticalCenter: parent.verticalCenter
                        model: [qsTr("Normal颜色"), qsTr("Hover颜色"), qsTr("Pressed颜色"), qsTr("Disabled颜色")]
                    }

                    Repeater{
                        model: colorList
                        delegate: Rectangle{
                            height: 30
                            width: 80
                            anchors.verticalCenter: parent.verticalCenter
                            color: model.color
                            border.width: 2
                            border.color: (nSColor === model.index)?"#000000":"transparent"
                            MouseArea{
                                anchors.fill: parent
                                onClicked: {
                                    switch (silkQmlComboBox.currentIndex){
                                    case 0:{
                                        SilkQmlCtrls.s_setTextColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setIndicatorColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setBackgroundColor(model.color, frmWindow);
                                        nSColor = model.index;
                                    }
                                    break;
                                    case 1:{
                                        SilkQmlCtrls.s_setTextHoverColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setIndicatorHoverColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setBackgroundHoverColor(model.color, frmWindow);
                                        nSHColor = model.index;
                                    }
                                    break;
                                    case 2:{
                                        SilkQmlCtrls.s_setTextPressedColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setIndicatorPressedColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setBackgroundPressedColor(model.color, frmWindow);
                                        nSPColor = model.index;
                                    }
                                    break;
                                    case 3:{
                                        SilkQmlCtrls.s_setTextDisabledColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setIndicatorDisabledColor(model.color, frmWindow);
                                        SilkQmlCtrls.s_setBackgroundDisabledColor(model.color, frmWindow);
                                        nSDColor = model.index;
                                    }
                                    break;
                                    default:
                                        return;
                                    }


                                }
                            }
                        }
                    }

                }
            }
        }
    }

    ScrollBar {
        id: vbar
        width: 20
        active: true
        orientation: Qt.Vertical
        size: (frame.height -nDefaultSpace*2) / allControl.height
        anchors.top: frame.top
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace/2
        anchors.bottom: controlAll.top
        anchors.bottomMargin: nDefaultSpace
    }
}
