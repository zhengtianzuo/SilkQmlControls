/*!
 *@file TestRectangle.qml
 *@brief 方框
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Controls 2.3

Rectangle {
    property alias text: label.text
    property alias hbar: hbar
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"
    property int contentWidth: width
    property int nDefaultSpace: 12

    height: 100
    border.color: "#808080"
    border.width: 1

    MouseArea{
        anchors.fill: parent
        enabled: parent.width < contentWidth
        onWheel: {
            if (hbar.size > 1) return;
            if (wheel.angleDelta.y > 0){
                hbar.decrease();
            }else{
                hbar.increase();
            }
        }
    }

    Text{
        id: label
        height: 30
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        font.pixelSize: 14
        color: enabled?defaultColor:disabledColor
        font.bold: true
    }

    ScrollBar {
        id: hbar
        height: 10
        hoverEnabled: true
        active: hovered || pressed
        orientation: Qt.Horizontal
        size: parent.width / contentWidth
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace/2
        anchors.right: parent.right
        anchors.rightMargin: nDefaultSpace/2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: nDefaultSpace/2
    }
}
