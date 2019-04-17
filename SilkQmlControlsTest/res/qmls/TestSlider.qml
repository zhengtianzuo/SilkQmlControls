/*!
 *@file TestSlider.qml
 *@brief Slider
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Controls 2.3
import SilkQmlControls 1.0

Column{
    property int nIndex: 0
    property alias text: label.text
    property alias to: slider.to
    property alias from: slider.from
    property alias value: slider.value
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"
    property color defaultHoverColor: "#ff6464"

    signal sValueChanged(int index, double value);

	anchors.verticalCenter: parent.verticalCenter

    SilkQmlText{
        id: label
        height: 20
        width: 75
        horizontalAlignment: Text.AlignHCenter
	}

    SilkQmlSlider {
        id: slider
        height: 20
        width: 100
        from: 0
        value: 0
        to: 40
        onValueChanged: {
            sValueChanged(nIndex, value);
        }
    }
}
