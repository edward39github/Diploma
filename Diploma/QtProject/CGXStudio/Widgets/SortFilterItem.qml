import QtQuick 2.9
import QtQuick.Controls 2.3

Rectangle
{   
    property string num: "1"
    property string name: ""

    opacity: 0.4

    width: 100
    height: 22

    anchors.verticalCenter: parent.verticalCenter

    color: Qt.hsla(0.0, 0.0, 1.0, 0.0)
    border.width: 1
    radius: 0
    border.color: Qt.hsla(0.0, 0.0, 1.0, 0.3)

    Rectangle
    {
        id: sortArea

        height: parent.height
        width: parent.height

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        color: Qt.hsla(0.0, 0.0, 1.0, 0.5)

        TextInput
        {
            id: numberInput
            anchors.centerIn: parent
            color: "#ffffff"
            text: num
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.ExtraBold
            font.family: "Arial"
            font.bold: true
            font.pixelSize: 10
        }
    }

    SwitchButtonWidget
    {
        id: switcher

        width: 32
        height: 16

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: sortArea.right
        anchors.leftMargin: 8

        checked: true
    }

    Text
    {
        text: name
        color: Qt.hsla(0.0, 0.0, 1.0, 0.7)
        elide: Text.ElideRight
        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 11
        anchors.verticalCenter: sortArea.verticalCenter
        anchors.left: switcher.right
        anchors.leftMargin: 3
    }
}
