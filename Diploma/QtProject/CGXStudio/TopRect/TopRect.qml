import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX

import "../Widgets"
import "../FormWindows"


Rectangle
{
    id: mainrect
    width: 1300
    height: 80

    //color: Qt.hsla(0.0, 0.0, 0.25, 1.0)

    gradient: Gradient
    {
        GradientStop { position: 1; color: Qt.hsla(0.53, 0.2, 0.25, 1.0) }
        GradientStop { position: 0.0; color: Qt.hsla(0.53, 0.2, 0.36, 1.0) }
    }

    opacity: 1
    border.width: 0

    Text
    {
        id: userName
        color: "#b3b3b3"
        text: qsTr("Роман Поляков")
        anchors.top: userImage.top
        anchors.topMargin: 8
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
        radiusImage: 32
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

    Rectangle
    {

        id: taskButton

        width: 324
        height: 80


        radius: 0
        anchors.left: spliterLine.right
        anchors.leftMargin: 45
        color: Qt.hsla(0.28, 0.0, 0.6, 0.2)

        Image
        {
            id: iconImage

            width: 32
            height: 32
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 16
            fillMode: Image.PreserveAspectFit
            source: Icons.icon("brain")
            smooth: true
            mipmap: true
            visible: false
        }
        FX.ColorOverlay
        {
            id: iconCO
            anchors.fill: iconImage
            source: iconImage
            color: Qt.hsla(0.94, 0.34, 0.8, 1.0)
        }

        Label
        {
            id: title
            color: Qt.hsla(0.53, 0.2, 0.8, 0.7)
            text: qsTr("Детализация персонажа")
            styleColor: "#797979"
            font.family: "Arial"
            font.bold: true
            anchors.top: parent.top
            anchors.left: iconImage.right
            anchors.topMargin: 7
            anchors.leftMargin: 10
            font.pointSize: 14
        }

        Text
        {
            id: description

            color: Qt.hsla(0.0, 0.0, 0.7, 1.0)
            text: "Для детализации персонажа необходимо:
    • разработать детали одежды
    • доработать исходники айтемов
    • детализировать кожу на скульптинге
                "
            elide: Text.ElideRight
            font.family: "Arial"
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            anchors.top: title.bottom
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 7
            anchors.left: title.left
            anchors.leftMargin: 1
            anchors.right: parent.right
            anchors.rightMargin: 5
        }

        FX.ColorOverlay
        {
            id: cornerCO
            x: 295
            y: 0
            anchors.fill: cornerImage
            source: cornerImage
            color: Qt.hsla(0.53, 0.6, 0.6, 1.0)
        }

        Image
        {
            id: cornerImage
            x: 309
            width: 16
            height: 16
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            source: Icons.icon("corner")
            smooth: true
            visible: false
            scale: 0.8

        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                tasksList.visible = !tasksList.visible
            }
        }
    }

    TasksList
    {
        id: tasksList

        x: taskButton.x
        y: taskButton.height

        width: taskButton.width
        height: 425

        visible: false
    }



    Image {
        id: userExitButton
        x: 290
        y: 28
        width: 32
        height: 32
        anchors.verticalCenterOffset: 0
        opacity: 0.7
        anchors.verticalCenter: parent.verticalCenter
        source: Icons.icon("exit")
    }

    Rectangle {
        id: spliterLine
        width: 1
        height: 60
        color: "#99ffffff"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: userExitButton.right
        anchors.leftMargin: 32
    }

    Rectangle
    {
        id: projectButton

        x: 925
        width: 338
        height: 44
        color: "#33ffffff"
        radius: 22
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 18
        anchors.bottom: projectArea.top
        anchors.bottomMargin: 0

        Text {
            id: projectTitle
            height: 19
            color: "#e6e6e6"
            text: qsTr("Реклама компании Yves Roche")
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.right: parent.right
            anchors.left: projectDeadlineIcon.right
            visible: true
            anchors.rightMargin: 37
            anchors.leftMargin: 6
            elide: Text.ElideRight
            font.italic: false
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
        }

        Image
        {
            id: projectDeadlineIcon
            y: 48
            width: 24
            height: 24
            anchors.left: parent.left
            anchors.leftMargin: 14
            anchors.verticalCenterOffset: 0
            opacity: 0.6
            anchors.verticalCenter: parent.verticalCenter
            source: Icons.icon("deadline")
        }

        Text {
            id: projectLefttime
            x: -40
            y: 44
            width: 197
            height: 15
            color: "#b3e6e6e6"
            text: "Осталось: 36 часов"
            anchors.top: projectTitle.bottom
            anchors.topMargin: 0
            anchors.left: projectTitle.left
            anchors.leftMargin: 0
            elide: Text.ElideRight
            wrapMode: Text.WrapAnywhere
            font.italic: true
            horizontalAlignment: Text.AlignLeft
            font.bold: false
            verticalAlignment: Text.AlignVCenter
            font.family: "Arial"
            font.pixelSize: 14
        }

        Image {
            id: projectImage
            x: 267
            y: 14

            anchors.centerIn: parent
            width: 24
            height: 16
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 145
            source: Icons.icon("arrowR")
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                projectList.visible = !projectList.visible
            }
        }
    }
    ProjecstList
    {
        id: projectList


        anchors.top: projectButton.bottom
        anchors.horizontalCenter: projectButton.horizontalCenter

        width: projectButton.width - 40
        height: 225

        visible: false
    }
}
