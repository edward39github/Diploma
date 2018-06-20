import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle
{   
    property string num: "1"
    property string name: ""

    opacity: 0.4

    Layout.fillHeight: true
    Layout.fillWidth: true

    color: Qt.hsla(0.0, 0.0, 1.0, 0.15)
    radius: 0
    border.width: 1
    border.color: Qt.hsla(0.0, 0.0, 1.0, 0.3)

    TextInput
    {
        id: numberInput

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: filterName.top

        anchors.topMargin: 3

        text: num
        color: Qt.hsla(0.0, 0.0, 0.9, 1.0)

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 12
    }

    Text
    {
        id: filterName

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.leftMargin: 3
        anchors.rightMargin: 3
        anchors.verticalCenterOffset: -5

        text: name
        color: Qt.hsla(0.0, 0.0, 1.0, 1.0)
        elide: Text.ElideRight

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 12
    }

    SwitchButtonWidget
    {
        id: switcher

        height: 16

        anchors.top: filterName.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.leftMargin: 3
        anchors.topMargin: 3
        anchors.rightMargin: 3

        checked: true
    }
}
