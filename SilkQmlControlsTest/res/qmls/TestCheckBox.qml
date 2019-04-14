/*!
 *@file TestCheckBox.qml
 *@brief 复选框
 *@version 1.0
 *@section LICENSE Copyright (C) 2003-2103 CamelSoft Corporation
 *@author zhengtianzuo
*/
import QtQuick 2.7
import QtQuick.Controls 2.3

CheckBox {
	id: checkBox
	text: qsTr("复选框")
	checked: false
	contentItem: Text {
		text: checkBox.text
		font: checkBox.font
		opacity: enabled ? 1.0 : 0.3
        color: checkBox.down ? "red" : "#000000"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		leftPadding: checkBox.indicator.width + checkBox.spacing
	}
}
