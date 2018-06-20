import QtQuick 2.4

Rectangle
{
    property string placeHolder: "placeHolder"

    width: 200
    height: 30
    color: "#4cffffff"
    radius: 15

    anchors.right: parent.right
    anchors.left: parent.left

    TextEdit {
        id: textEdit

        text: ""
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.topMargin: 0
        font.family: "Arial"
        anchors.fill: parent
        font.bold: false
        font.pixelSize: 14

        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft

        Text {
            id: placeholderText
            color: "#80b6b6b6"
            text: placeHolder
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            font.italic: true
            font.family: "Arial"
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.fill: parent
            font.pixelSize: 12
            visible: !textEdit.text
        }
    }
}
