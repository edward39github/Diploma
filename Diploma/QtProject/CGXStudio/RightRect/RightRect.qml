import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX
import "../Widgets"

Rectangle
{
    id: mainrect
    width: 282
    height: 720
    color: Qt.hsla(0.0, 0.0, 0.3, 1.0)
    border.width: 0

    TabBar {
        id: bar
        height: 80
        position: TabBar.Header
        spacing: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        onCurrentIndexChanged: { stack.currentIndex = bar.currentIndex }

        TabButtonWidget
        {
            id: tabbuttonFilter
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons + "filter.png"
            iconWidth: 24
            iconHeight: 24
            checked: true
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }

        TabButtonWidget
        {
            id: tabbuttonFiles
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons + "files.png"
            iconWidth: 24
            iconHeight: 24
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }
        TabButtonWidget
        {
            id: tabbuttonTasks
            width: Math.round(bar.width / 3)
            height: 80
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            iconPath: Icons + "tasks.png"
            iconWidth: 24
            iconHeight: 24
            colorButton: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }
    }

    StackLayout
    {
        id: stack
        anchors.top: bar.bottom
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        currentIndex: bar.currentIndex

        FormFilters{ }

        FormFiles{ }

        FormTasks{ }
    }
}
