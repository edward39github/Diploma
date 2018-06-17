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

    Button
    {
        id: exitButton
        width: 80
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        anchors.bottom: parent.bottom

        contentItem: Image
        {
            id: img
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            anchors.bottomMargin: 24
            anchors.topMargin: 24
            anchors.fill: parent
            fillMode: Image.Stretch
            smooth: true
            mipmap: true
            visible: false
            source: Icons + "exit.png"
        }
        FX.DropShadow
        {
            anchors.fill: img
            horizontalOffset: 2
            verticalOffset: 2
            radius: 8.0
            samples: 17
            color: "#80000000"
            source: img
        }

        background: Rectangle
        {
            id: bg

            implicitWidth: parent.width
            implicitHeight: parent.height
            anchors.fill: parent
            radius: 0
            border.width: 0
            color: exitButton.pressed ? Qt.hsla(0.111, 0.71, 0.84, 1.0) : Qt.hsla(0.111, 0.71, 0.64, 1.0)
        }
    }

    Rectangle
    {
        id: line
        y: 30
        height: 1
        color: Qt.hsla(0.111, 0.71, 0.64, 1.0)
        visible: false
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }

    Text {
        id: userName
        color: "#b3b3b3"
        text: qsTr("Роман Поляков")
        anchors.top: userImage.top
        anchors.topMargin: 10
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
        width: 80
        height: 80
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 0
        radiusImage: -2
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
        anchors.right: exitButton.left
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: line.top
        anchors.bottomMargin: -1
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

    Rectangle {
        id: rectangle
        x: 632
        width: 282
        height: 80
        color: "#00d771e0"
        radius: 0
        anchors.right: taskButton.left
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        border.color: "#4cd374dd"
        border.width: 0

        Image {
            id: projectImage
            y: 8
            width: 24
            height: 24
            anchors.verticalCenterOffset: -18
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 27
            source: Icons + "project.png"
            smooth: true
            mipmap: true
        }

        Text {
            id: projectTitle
            height: 21
            color: "#cccccc"
            text: qsTr("Реклама сети Reserved")
            anchors.top: parent.top
            anchors.topMargin: 10
            wrapMode: Text.WordWrap
            font.italic: true
            font.underline: false
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: image.right
            anchors.leftMargin: 10
            font.family: "Arial"
            font.bold: true
            font.pixelSize: 18
        }

        Text {
            id: projectDescription
            x: 57
            width: 215
            color: "#99cccccc"
            text: "Данный проект содержит 9 ассетов.
Сроки сдачи: 22.09.2018 в 12:00"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.top: projectTitle.bottom
            anchors.topMargin: 0
            anchors.rightMargin: 10
            font.pixelSize: 10
            wrapMode: Text.WordWrap
            anchors.leftMargin: 9
            anchors.right: parent.right
            font.italic: true
            font.family: "Arial"
            anchors.left: image.right
            font.bold: false
            font.underline: false
        }
    }
}
