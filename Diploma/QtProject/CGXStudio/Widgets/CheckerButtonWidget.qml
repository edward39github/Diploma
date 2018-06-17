import QtQuick 2.9
import QtQuick.Controls 2.3


Item
{
    property string buttonText: ""
    property bool textOnRight: true
    property bool checkedState: true

    SwitchButtonWidget
    {
        id: button

        width: 40
        height: 20

        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 0

        checked: checkedState
    }

    Text
    {
        id: txt
        height: parent.height

        anchors.verticalCenter: button.verticalCenter
        anchors.left: button.right
        anchors.leftMargin: 5
        color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
        text: buttonText
        elide: Text.ElideRight
        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 15
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }
}
