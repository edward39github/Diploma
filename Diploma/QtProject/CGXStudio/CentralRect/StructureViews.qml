import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../Widgets"

Rectangle
{
    width: 330
    color: Qt.hsla(0.0, 0.0, 0.39, 1.0)
    TabBar
    {
        id: bar
        height: 30
        spacing: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        onCurrentIndexChanged: { stack.currentIndex = bar.currentIndex }

        StructureViewsTab
        {
            id: tabTree
            checked: true
            tabText: "Дерево"
        }
        StructureViewsTab
        {
            id: tabFolder
            tabText: "Список"
        }
        StructureViewsTab
        {
            id: tabAsset
            tabText: "Ассеты"
        }
    }

    StackLayout
    {
        id: stack

        anchors.left: parent.left
        anchors.top: bar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0

        currentIndex: 0

        FileView
        {
            anchors.fill: parent
        }
        FolderView
        {
            anchors.fill: parent
        }
        AssetView
        {
            anchors.fill: parent
        }
    }
}
