import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2
import Qt.labs.folderlistmodel 2.11
import QtGraphicalEffects 1.0


GridView
{
    id: view

    property string rootDirectory: "file:///C:/Users/edward/CG-Cooperation/Square/Content"

    property int selectionLineLength: 20
    property int selectionLineThickness: 2

    model: FolderListModel
    {
        folder: rootDirectory
        showFiles: true
    }

    cellWidth: 130
    cellHeight: 130

    leftMargin: 0
    topMargin: 0
    rightMargin: 0
    bottomMargin: 0

    highlight: Rectangle
    {
        width: cellWidth - 5
        height: cellHeight - 5
        color: Qt.hsla(0.08, 0.7, 0.65, 0.1)

        Rectangle
        {
            // left top - left
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            height: selectionLineLength
            width: selectionLineThickness

            anchors.top: parent.top
            anchors.left: parent.left

        }
        Rectangle
        {
            // left top - top
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            width: selectionLineLength
            height: selectionLineThickness

            anchors.top: parent.top
            anchors.left: parent.left

        }

        Rectangle
        {
            // left bottom - left
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            height: selectionLineLength
            width: selectionLineThickness

            anchors.bottom: parent.bottom
            anchors.left: parent.left

        }

        Rectangle
        {
            // left bottom - bottom
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            width: selectionLineLength
            height: selectionLineThickness

            anchors.bottom: parent.bottom
            anchors.left: parent.left

        }

        Rectangle
        {
            // right top - right
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            height: selectionLineLength
            width: selectionLineThickness

            anchors.top: parent.top
            anchors.right: parent.right

        }
        Rectangle
        {
            // right top - top
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            width: selectionLineLength
            height: selectionLineThickness

            anchors.top: parent.top
            anchors.right: parent.right

        }

        Rectangle
        {
            // right bottom - left
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            height: selectionLineLength
            width: selectionLineThickness

            anchors.bottom: parent.bottom
            anchors.right: parent.right

        }

        Rectangle
        {
            // right bottom - bottom
            color: Qt.hsla(0.08, 0.9, 0.65, 1.0)

            width: selectionLineLength
            height: selectionLineThickness

            anchors.bottom: parent.bottom
            anchors.right: parent.right

        }
    }

    delegate: Rectangle
    {
        width: cellWidth - 5
        height: cellWidth - 5

        color: Qt.hsla(0.0, 0.0, 0.7, 0.2)

        Image
        {
            id: iconImg

            width: 40
            height: 40

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: -20

            source: Icons.byPath(model.filePath)

            smooth: true
            visible: false
        }
        DropShadow
        {
            source: iconImg
            anchors.fill: source
            cached: true
            horizontalOffset: 2
            verticalOffset: 2
            radius: 8.0
            samples: 16
            color: Qt.hsla(0.0, 0.0, 0.1, 0.6)
            smooth: true
        }

        Text
        {
            anchors {
                top: iconImg.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
                topMargin: 10
            }
            text: model.fileName
            elide: Text.ElideRight
            wrapMode: Text.WrapAnywhere
            color: Qt.hsla(0.0, 0.0, 1.0, 0.7)
            font.weight: Font.Normal
            font.family: "Arial"
            font.bold: true
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea
        {
            anchors.fill: parent
            onClicked: parent.GridView.view.currentIndex = index
        }
    }
}
