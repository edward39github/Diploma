import QtQuick 2.9
import QtQuick.Controls 2.3

Item
{
    property string num: "1"
    property string name: value

    Rectangle
    {
        id: pos

        height: 25
        width: 25
        color: "#19ffffff"
        radius: 5
        border.color: "#b6b6b6"

        TextInput
        {
            id: numberInput

            color: "#ffffff"
            text: num
            anchors.centerIn: pos
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }
    Text
    {
        text: name
        color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
        elide: Text.ElideRight
        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 15
        anchors.verticalCenter: pos.verticalCenter
        anchors.left: pos.right
        anchors.leftMargin: 5
    }

}
