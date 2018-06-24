import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "../RightRect" as RRect
import "../CentralRect" as CRect

import "../Widgets"

Item
{
    anchors.fill: parent

    RRect.RightRect
    {
        id: rightRect

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

    CRect.CentralRect
    {
        id: centrRect
        x: 0
        y: 0

        anchors.left: explorer.right
        anchors.top: parent.top
        anchors.right: rightRect.left
        anchors.bottom: parent.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
    }

    CRect.StructureViews
    {
        id: explorer

        width: 330

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
    }
}
