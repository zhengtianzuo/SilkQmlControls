/*!
 *@file TestRadioButton.qml
 *@brief 单选框
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Controls 2.3

RadioButton {
	id: radioButton
    text: qsTr("单选框")
	checked: false
	contentItem: Text {
		text: radioButton.text
		font: radioButton.font
		opacity: enabled ? 1.0 : 0.3
        color: radioButton.down ? "red" : "#000000"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		leftPadding: radioButton.indicator.width + radioButton.spacing
	}
}
