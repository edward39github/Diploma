import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle
{
    property int itemHeight: 80

    id: mainrect
    width: 80
    height: 600
    color: Qt.hsla(0.0, 0.0, 0.3, 1.0)
    border.width: 0
    LefItem {
        id: itemProject
        height: 80
        iconPath: "../rcc/icons/project.png"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
    }

    LefItem
    {
        id: itemVariables
        height: itemHeight
        iconPath: "../rcc/icons/variable.png"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.topMargin: 0

        anchors.top: itemProject.bottom
    }
    LefItem {
        id: itemPrograms
        height: 80
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.top: itemVariables.bottom
        iconPath: "../rcc/icons/programs.png"
    }

    LefItem {
        id: itemLibrary
        x: -8
        y: -8
        height: 80
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.top: itemPrograms.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        iconPath: "../rcc/icons/library.png"
        anchors.rightMargin: 0
    }

    LefItem
    {
        id: itemSettings
        width: 80
        height: itemHeight
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        iconPath: "../rcc/icons/settings.png"
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.top: buttonApp.bottom
    }



}
