import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../Widgets"

Rectangle
{
    property int toolSize: 16

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

    FileGridView
    {
        id: folder

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        anchors.leftMargin: 35
        anchors.topMargin: 45
        anchors.rightMargin: 55
        anchors.bottomMargin: 110
    }

    Slider
    {
        id: scaleSlider
        value: 0.5
        orientation: Qt.Vertical

        anchors.left: parent.left
        anchors.top: folder.top
        anchors.bottom: folder.bottom
        anchors.right: folder.left

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

    ColumnLayout
    {
        id: filterPanel

        anchors.top: toolPanel.bottom
        anchors.right: parent.right
        anchors.bottom: programs.top
        anchors.left: folder.right

        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: spacing
        anchors.bottomMargin: spacing

        spacing: 10

        SortFilterItem{ name: ".obj"; num: "1"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".fbx"; num: "2"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".abc"; num: "3"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".png"; num: "4"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".jpg"; num: "5"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".tif"; num: "6"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name: ".exr"; num: "7"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        SortFilterItem{ name:  ".py"; num: "8"; width: Layout.preferredWidth; height: Layout.preferredHeight; Layout.fillWidth: true; Layout.fillHeight: true }
        //Item { Layout.fillWidth: true; Layout.fillHeight: true }
    }

    ProgramView
    {
        id: programs

        anchors.top: folder.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.bottomMargin: 0
        anchors.topMargin: 20
    }

    Rectangle
    {
        id: toolPanel

        anchors.top: parent.top
        anchors.bottom: folder.top
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.bottomMargin: 10
        anchors.topMargin: 0

        color: programs.color

        Row
        {
            width: 400

            anchors.centerIn: parent

            spacing: ( width / 5 ) + toolSize

            Image
            {
                width: toolSize
                height: toolSize

                anchors.verticalCenter: parent.verticalCenter

                source: Icons.icon("copy")
                mipmap: true
                fillMode: Image.Stretch
            }
            Image
            {
                width: toolSize
                height: toolSize

                anchors.verticalCenter: parent.verticalCenter

                source: Icons.icon("remove")
                mipmap: true
                fillMode: Image.Stretch
            }
            Image
            {
                width: toolSize
                height: toolSize

                anchors.verticalCenter: parent.verticalCenter

                source: Icons.icon("folder")
                mipmap: true
                fillMode: Image.Stretch
            }
            Image
            {
                width: toolSize
                height: toolSize

                anchors.verticalCenter: parent.verticalCenter

                source: Icons.icon("file")
                mipmap: true
                fillMode: Image.Stretch
            }
            Image
            {
                width: toolSize
                height: toolSize

                anchors.verticalCenter: parent.verticalCenter

                source: Icons.icon("edit")
                mipmap: true
                fillMode: Image.Stretch
            }
        }
    }
}
