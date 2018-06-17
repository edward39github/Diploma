import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ListView
{
    function getRowColor(row)
    {
        if( row % 2 == 0 ){ return Qt.hsla(0.0, 0.0, 0.39, 1.0); }
        return Qt.hsla(0.0, 0.0, 0.41, 1.0);
    }

    anchors.fill: parent
    spacing: 0
    delegate: Item
    {
        height: 50
        width: parent.width
        Image
        {
            id: imgAset
            width: 30
            height: 30
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            source: Icons + "package.png"
            fillMode: Image.Stretch
            scale: 1
            smooth: true
            mipmap: true
        }

        Text
        {
            text: name
            anchors.left: imgAset.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            color: Qt.hsla(0.5, 0.0, 0.9, 1.0)
        }
        Image
        {
            width: 12
            height: 12
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.verticalCenter: parent.verticalCenter
            source: Icons + "remove.png"
            fillMode: Image.Stretch
            scale: 1
            smooth: true
            mipmap: true
        }
        Rectangle
        {
            height: 1
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            color: Qt.hsla(0.127, 0.0, 1.0, 0.2)
        }
    }
    model: ListModel
    {
        ListElement { name: "Orion" }
        ListElement { name: "Shrek" }
        ListElement { name: "Main character" }
        ListElement { name: "Vector field" }
    }
}
