import QtQuick 2.9

Rectangle
{
    id: rectDragdrop
    height: 70
    color: "#19ffffff"
    radius: 10
    border.width: 0
    anchors.right: parent.right
    anchors.rightMargin: 15
    anchors.left: parent.left
    anchors.leftMargin: 15
    anchors.top: checkerArtists.bottom
    anchors.topMargin: 20

    Text
    {
        id: text1Dragdrop
        height: 25
        anchors.centerIn: parent
        color: "#7fb7a5"
        text: qsTr("Drag + Drop")
        anchors.verticalCenterOffset: -6
        renderType: Text.QtRendering
        font.family: "Arial"
        wrapMode: Text.WordWrap
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text
    {
        id: text2Dragdrop
        x: 72
        height: 15
        color: "#e6e6e6"
        text: qsTr("Файлы")
        anchors.top: text1Dragdrop.bottom
        anchors.topMargin: 0
        anchors.horizontalCenter: text1Dragdrop.horizontalCenter
        font.family: "Arial"
        font.pixelSize: 13
        font.bold: true
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
