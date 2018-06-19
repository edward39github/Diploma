import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ListView
{
    property int rowHeight: 55

    function getRowColor(row)
    {
        if( row % 2 == 0 ){ return Qt.hsla(0.0, 0.0, 0.39, 1.0); }
        return Qt.hsla(0.0, 0.0, 0.41, 1.0);
    }

    model: ListModel
    {
        ListElement { name: "Orion" }
        ListElement { name: "Shrek" }
        ListElement { name: "Main character" }
        ListElement { name: "Vector field" }
    }

    spacing: 0

    delegate: Rectangle
    {
        height: rowHeight
        width: parent.width
        color: getRowColor(index)

        Image
        {
            id: iconImg

            width: 32
            height: 32

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20

            smooth: true
            source: Icons.icon("package")

            fillMode: Image.Stretch

            visible: false
        }
        DropShadow
        {
            anchors.fill: iconImg
            horizontalOffset: 2
            verticalOffset: 2
            radius: 4.0
            samples: 17
            color: Qt.hsla(0.0, 0.0, 0.3, 1.0)
            source: iconImg
        }

        Text
        {
            text: name
            anchors.left: iconImg.right
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            color: Qt.hsla(0.5, 0.0, 0.75, 1.0)
            elide: Text.ElideRight
            font.weight: Font.ExtraBold
            font.family: "Arial"
            font.bold: false
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
    }

    RowLayout
    {
        id: panel

        height: 30

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("add")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("remove")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("copy")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
