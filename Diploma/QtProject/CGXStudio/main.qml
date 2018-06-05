import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window
{
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Hello World")

    Rectangle
    {
        id: leftRectangle
        width: 75
        height: 30
        color: "#333333"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: projectSelector.bottom
        anchors.topMargin: 0
    }

    Rectangle
    {
        id: rightRectangle
        x: 1013
        width: 267
        color: "#636363"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }

    Rectangle
    {
        id: topRectangle
        height: 75
        color: "#00000000"
        border.color: "#00000000"
        anchors.right: rightRectangle.left
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        clip: false
        anchors.left: projectSelector.right
        anchors.leftMargin: 0

        Rectangle
        {
            id: line
            y: 0
            height: 1
            color: "#a079b8"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            border.color: "#a079b8"
        }

    }

    Rectangle
    {
        id: bottomRectangle
        y: 41
        height: 100
        color: "#de2121"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: tabView.right
        anchors.right: rightRectangle.left
        anchors.leftMargin: 0
        anchors.rightMargin: 0
    }

    Rectangle
    {
        id: projectSelector
        width: 375
        height: 75
        enabled: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        transformOrigin: Item.Cente
        color: "#a079b8"

        Text {
            id: projectTitle
            color: "#f3f3f3"
            text: qsTr("Реклама Coca-Cola")
            font.letterSpacing: -0.8
            font.wordSpacing: 0
            style: Text.Outline
            font.weight: Font.DemiBold
            font.family: "Verdana"
            styleColor: "#673879"
            lineHeight: 1
            renderType: Text.QtRendering
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 5
            font.pixelSize: 29
        }

        Text {
            id: text1
            width: 365
            height: 27
            color: "#e9e9e9"
            text: "Стилизованный рекламный ролик для компании \"Coca-Cola\". Тематика новогодняя..."
            wrapMode: Text.WordWrap
            font.family: "Verdana"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            anchors.left: projectTitle.left
            anchors.leftMargin: 0
            anchors.top: projectTitle.bottom
            anchors.topMargin: 0
            font.pixelSize: 12
        }

    }

    TabView
    {
        id: tabView
        tabsVisible: true
        frameVisible: true
        tabPosition: 8
        anchors.right: projectSelector.right
        anchors.rightMargin: 0
        anchors.left: leftRectangle.right
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: projectSelector.bottom
        anchors.topMargin: 0
        style: MyStyle_Tab{}
        Tab
        {
            property string icon
            active: true
            icon: "rcc/icons/64/box.png"
        }
        Tab
        {
            property string icon
            active: true
            icon: "rcc/icons/64/box.png"
        }
    }

}
