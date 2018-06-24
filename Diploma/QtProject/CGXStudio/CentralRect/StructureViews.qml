import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../Widgets"

Rectangle
{
    property alias objTree: projectTreeView

    width: 330
    color: Qt.hsla(0.63, 0.03, 0.39, 1.0)
    TabBar
    {
        id: bar
        height: 30
        spacing: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        onCurrentIndexChanged: { stack.currentIndex = bar.currentIndex }

        StructureViewsTab
        {
            id: tabFolder
            tabText: "Структура"
            checked: true
        }
        StructureViewsTab
        {
            id: tabAsset
            tabText: "Ассеты"
        }
        StructureViewsTab
        {
            id: tabTree
            tabText: "Дерево"
        }
    }

    StackLayout
    {
        id: stack

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: bar.top

        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0

        currentIndex: bar.currentIndex

        FolderView
        {
            anchors.fill: parent
        }
        AssetView
        {
            anchors.fill: parent
        }
        FileView
        {
            id: projectTreeView
            anchors.fill: parent
        }
    }
}
