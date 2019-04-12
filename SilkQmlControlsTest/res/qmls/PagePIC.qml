import QtQuick 2.7
import QtQuick.Controls 2.3
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Rectangle{
    property alias vbar: vbar
    property int nDefaultSpace: 12
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"
    property bool isPlay: false
    property bool isFull: false
    property bool isMax: false
    property bool isTopMost: false

    id: frmWindow
    color: "transparent"

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
            id: allControl
            y: nDefaultSpace -vbar.position*height
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: nDefaultSpace
            spacing: nDefaultSpace

            Item{height: 100;width: parent.width}

            Row{
                anchors.right: parent.right
                anchors.rightMargin: nDefaultSpace
                spacing: nDefaultSpace/2

                SilkQmlButton{
                    height: 21
                    width: 20
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: isTopMost?"topmost":"untopmost"
                    onClicked: isTopMost = !isTopMost
                }

                SilkQmlButton{
                    height: 18
                    width: 18
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "sys_min"
                }

                SilkQmlButton{
                    height: 18
                    width: 18
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: isMax?"sys_restore":"sys_max"
                    onClicked: isMax = !isMax
                }

                SilkQmlButton{
                    height: 21
                    width: 17
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "close"
                }
            }

            SilkQmlRectangle{
                id: rectangle
                height: 200
                width: parent.width
                border.color: defaultColor
                border.width: 2
            }

            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: nDefaultSpace/2

                SilkQmlButton{
                    height: 44
                    width: 38
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: isPlay?"pause":"play"
                    onClicked: isPlay = !isPlay
                }

                Item{height: parent.height;width: nDefaultSpace}

                SilkQmlButton{
                    height: 44
                    width: 22
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "prev"
                }

                SilkQmlButton{
                    height: 44
                    width: 22
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "stop"
                }

                SilkQmlButton{
                    height: 44
                    width: 22
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "next"
                }

                Item{height: parent.height;width: nDefaultSpace}

                SilkQmlButton{
                    height: 44
                    width: 24
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: isFull?"full_quit":"full"
                    onClicked: isFull = !isFull
                }

                SilkQmlButton{
                    height: 44
                    width: 24
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "more"
                }

                SilkQmlButton{
                    height: 21
                    width: 20
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "browser"
                }

                SilkQmlButton{
                    height: 18
                    width: 18
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "btndownload"
                }

                SilkQmlButton{
                    height: 18
                    width: 18
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "btnfavorite"
                }

                SilkQmlButton{
                    height: 18
                    width: 18
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "btnhistory"
                }

                SilkQmlButton{
                    height: 21
                    width: 21
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "dlna"
                }

                SilkQmlButton{
                    height: 20
                    width: 22
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "tv_switch"
                }

                SilkQmlButton{
                    height: 44
                    width: 26
                    anchors.verticalCenter: parent.verticalCenter
                    s_horizontalCutCount: 4
                    s_verticalCutCount: 1
                    s_cutIndex: enabled?(pressed?0:(hovered?1:2)):3
                    s_imageName: "setting"
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
                id: enabledCheckBox
                text: qsTr("可用")
                width: 60
                checked: true
                s_outOfAll: true
                onCheckedChanged: {
                    SilkQmlCtrls.s_setAllEnabled(checked, frmWindow);
                    rectangle.border.color = checked?(radioSilkSkin.checked?defaultColor:"#95764C"):disabledColor
                }
            }

            SilkQmlRadioButton {
                id: radioSilkSkin
                text: qsTr("默认皮肤")
                width: 100
                checked: true
                s_outOfAll: true
                onCheckedChanged: {
                    if (checked === true){
                        SilkQmlCtrls.s_loadSkin("PicDefault", "camel");
                        rectangle.border.color = enabledCheckBox.checked?defaultColor:disabledColor
                    }
                }
            }

            SilkQmlRadioButton {
                id: radioSilkSkinVIP
                text: qsTr("金色皮肤")
                width: 100
                checked: false
                s_outOfAll: true
                onCheckedChanged: {
                    if (checked === true){
                        SilkQmlCtrls.s_loadSkin("PicGold", "camel");
                        rectangle.border.color = enabledCheckBox.checked?"#95764C":disabledColor
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
