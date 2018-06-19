import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../Widgets"

Rectangle
{
    id: mainrect

    color: Qt.hsla(0.0, 0.0, 0.5, 1.0)
    border.width: 0
    border.color: Qt.hsla(0.0, 0.0, 0.39, 1.0)

    Image {
        id: backplate
        opacity: 0.1
        fillMode: Image.Tile
        anchors.fill: parent
        source: Icons.icon("grid")
    }

    StructureViews
    {
        id: explorer

        width: 330

        anchors.left: mainrect.left
        anchors.top: mainrect.top
        anchors.bottom: mainrect.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        objTree.onPathChanged:
        {
            folderContent.model.folder = "file:///" + explorer.objTree.path
        }
    }

    Row
    {
        id: sortFilterPanel

        height: 55

        anchors.left: explorer.right
        anchors.top: parent.top
        anchors.right: parent.right

        anchors.leftMargin: 55
        anchors.topMargin: 0

        spacing: 15

        SortFilterItem{ name: ".obj"; num: "1" }
        SortFilterItem{ name: ".fbx"; num: "2" }
        SortFilterItem{ name: ".abc"; num: "3" }
        SortFilterItem{ name: ".png"; num: "4" }
        SortFilterItem{ name: ".jpg"; num: "5" }
        SortFilterItem{ name: ".tif"; num: "6" }
        SortFilterItem{ name: ".exr"; num: "7" }
        SortFilterItem{ name:  ".py"; num: "8" }
    }

    Slider
    {
        id: scaleSlider
        value: 0.5
        orientation: Qt.Vertical

        anchors.left: explorer.right
        anchors.top: folderContent.top
        anchors.bottom: folderContent.bottom

        width: 55

        background: Rectangle
        {
            color: Qt.hsla(0.0, 0.0, 0.8, 1.0)
            width: 4
            radius: 2
            anchors.horizontalCenter: scaleSlider.horizontalCenter

            Rectangle
            {

                width: parent.width
                height: scaleSlider.visualPosition * parent.height
                color: Qt.hsla(0.53, 0.6, 0.6, 1.0)
                radius: parent.radius
            }
        }
        handle: Rectangle
        {
            x: scaleSlider.leftPadding + scaleSlider.availableWidth / 2 - width / 2
            y: scaleSlider.topPadding + scaleSlider.visualPosition * (scaleSlider.availableHeight - height)
            implicitWidth: 16
            implicitHeight: 16
            radius: 13
            color: Qt.hsla(0.0, 0.0, 0.9, 1.0)
        }


    }

    FileGridView
    {
        id: folderContent

        anchors.top: sortFilterPanel.bottom
        anchors.left: scaleSlider.right
        anchors.right: parent.right
        anchors.bottom: programs.top

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 20
        anchors.bottomMargin: 10
    }

    ProgramView
    {
        id: programs

        width: 700

        anchors.horizontalCenter: folderContent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
    }
}
