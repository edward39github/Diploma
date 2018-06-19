import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX
import "../Widgets"

Rectangle
{
    id: mainrect
    width: 300
    height: 720
    color: Qt.hsla(0.0, 0.0, 0.35, 1.0)
    border.width: 0

    TabBar
    {
        id: bar

        height: 60
        position: TabBar.Header
        spacing: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0

        onCurrentIndexChanged: { stack.currentIndex = bar.currentIndex }

        TabButtonWidget
        {
            id: tabbuttonFiles

            linePaddingL: 5
            linePaddingR: 5
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons.icon("files")
            iconWidth: 24
            iconHeight: 24
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }
        TabButtonWidget
        {
            id: tabbuttonTasks

            linePaddingL: 5
            linePaddingR: 10
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons.icon("tasks")
            iconWidth: 24
            iconHeight: 24
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }
        TabButtonWidget
        {
            id: tabbuttonVariables

            linePaddingL: 5
            linePaddingR: 10
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons.icon("variables")
            iconWidth: 24
            iconHeight: 24
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }
    }

    StackLayout
    {
        id: stack
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.top: bar.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        currentIndex: bar.currentIndex

        FormFiles{ }

        FormTasks{ }

        FormVariables{ anchors.topMargin: 10}
    }
}
