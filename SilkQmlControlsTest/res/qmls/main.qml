import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import SilkQmlControls 1.0
import SilkQmlControlsElitist 1.0

Window {
    id: frmWindow
    visible: true
    width: 1024
    height: 768
    title: qsTr("三峰驼演示程序")
    flags: Qt.Window | Qt.FramelessWindowHint
    color: "#e0e0e0"
    Component.onCompleted: SilkQmlCtrls.s_loadSkin("PicDefault", "camel");

    property int nDefaultSpace: 12
    property color defaultColor: "#148014"
    property color disabledColor: "#aaaaaa"

    Image {
        id: imgBack
        anchors.fill: parent
        source: "qrc:/images/SilkStyle_Back.png"
    }

    MouseArea{
        anchors.fill: parent
        property point clickPos: "0,0"
        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }
        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            frmWindow.setX(frmWindow.x+delta.x)
            frmWindow.setY(frmWindow.y+delta.y)
        }
        onWheel: {
            if (bar.currentIndex === 0){
                if (pageShow.vbar.size > 1) return;
                if (wheel.angleDelta.y > 0){
                    pageShow.vbar.decrease();
                }else{
                    pageShow.vbar.increase();
                }
            }
            if (bar.currentIndex === 1){
                if (pageSVG.vbar.size > 1) return;
                if (wheel.angleDelta.y > 0){
                    pageSVG.vbar.decrease();
                }else{
                    pageSVG.vbar.increase();
                }
            }
            if (bar.currentIndex === 1){
                if (pagePIC.vbar.size > 1) return;
                if (wheel.angleDelta.y > 0){
                    pagePIC.vbar.decrease();
                }else{
                    pagePIC.vbar.increase();
                }
            }
            if (bar.currentIndex === 3){
                if (pageTest.vbar.size > 1) return;
                if (wheel.angleDelta.y > 0){
                    pageTest.vbar.decrease();
                }else{
                    pageTest.vbar.increase();
                }
            }
        }
    }

    Rectangle{
        height: 36
        width: parent.width
        color: "transparent"

        Row{
            anchors.top: parent.top
            anchors.topMargin: nDefaultSpace/2
            anchors.left: parent.left
            anchors.leftMargin: nDefaultSpace/2
            height: 36
            width: parent.width
            spacing: nDefaultSpace/2

            Image{
                height: 24
                width: 24
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/camel3.ico"
            }

            Text{
                height: 36
                text: qsTr("三峰驼演示程序")
                font.family: "Microsoft YaHei"
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
                color: defaultColor
            }
        }

        Row{
            height: 36
            spacing: nDefaultSpace/2
            anchors.top: parent.top
            anchors.topMargin: nDefaultSpace/2
            anchors.right: parent.right
            anchors.rightMargin: nDefaultSpace/2
            SilkQmlButton{
                height: 20
                width: 20
                s_imageName: "ButtonMin"
                s_outOfAll: true
                onClicked: {
                    showMinimized();
                }
            }
            SilkQmlButton{
                height: 20
                width: 20
                s_imageName: "ButtonClose"
                s_outOfAll: true
                onClicked: {
                    Qt.quit();
                }
                SilkQmlToolTip{
                    text: qsTr("关闭")
                }
            }
        }
    }

    TestTabBar{
        id: bar
        anchors.top: parent.top
        anchors.topMargin: 56
        anchors.left: parent.left
        anchors.leftMargin: nDefaultSpace
        height: 56
        width: 70*myModel.count
        Component.onCompleted: {
            myModel.append({ "modelText": qsTr("组件示例"), "modelColor": "#148014", "modelColorG": "#4040ff", "modelSrc": "qrc:/images/Skin.svg", "modelSrcG": "qrc:/images/SkinG.svg"})
            myModel.append({ "modelText": qsTr("矢量换肤"), "modelColor": "#148014", "modelColorG": "#4040ff", "modelSrc": "qrc:/images/SVG.svg", "modelSrcG": "qrc:/images/SVGG.svg"})
            myModel.append({ "modelText": qsTr("图片换肤"), "modelColor": "#148014", "modelColorG": "#4040ff", "modelSrc": "qrc:/images/PIC.svg", "modelSrcG": "qrc:/images/PICG.svg"})
            myModel.append({ "modelText": qsTr("浏览组件"), "modelColor": "#148014", "modelColorG": "#4040ff", "modelSrc": "qrc:/images/Controls.svg", "modelSrcG": "qrc:/images/ControlsG.svg"})
            //bar.currentIndex = 1;
        }
    }

    SwipeView {
        id: view
        anchors.top: bar.bottom
        anchors.topMargin: -nDefaultSpace
        height: frmWindow.height - bar.height - 40 - nDefaultSpace
        width: parent.width
        currentIndex: bar.currentIndex
        interactive: false
        onCurrentIndexChanged: {
            bar.currentIndex = currentIndex;
        }

        PageShow{
            id: pageShow
        }

        PageSVG{
            id: pageSVG
        }

        PagePIC{
            id: pagePIC
        }

        PageTest{
            id: pageTest
        }
    }
}
