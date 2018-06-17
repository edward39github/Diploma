import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX
import "../Widgets"

Rectangle
{
    id: mainrect
    width: 1300
    height: 80
    color: Qt.hsla(0.0, 0.0, 0.3, 1.0)

    opacity: 1
    border.width: 0

    Text {
        id: userName
        color: "#b3b3b3"
        text: qsTr("Роман Поляков")
        anchors.top: userImage.top
        anchors.topMargin: 0
        anchors.left: userImage.right
        anchors.leftMargin: 10
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 18
    }

    RoundImageWidget
    {
        id: userImage
        y: 17
        width: 64
        height: 64
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 8
        radiusImage: 14
    }

    FX.BrightnessContrast
    {
        anchors.fill: imageAlarm
        source: imageAlarm
        brightness: 0.6
    }

    TaskButton
    {
        id: taskButton
        x: 604

        width: 300
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
    }

    Text {
        id: userPost
        color: "#99b3b3b3"
        text: qsTr("Аниматор органических персонажей")
        anchors.top: userName.bottom
        anchors.topMargin: -1
        anchors.left: userImage.right
        anchors.leftMargin: 10
        font.pixelSize: 10
        font.family: "Arial"
        font.bold: false
    }

    Text {
        id: userDepartment
        x: -1
        y: 3
        color: "#99b3b3b3"
        text: qsTr("Отдел Анимации")
        font.pixelSize: 10
        anchors.leftMargin: 10
        anchors.topMargin: 0
        font.family: "Arial"
        anchors.left: userImage.right
        anchors.top: userPost.bottom
        font.bold: false
    }
}
