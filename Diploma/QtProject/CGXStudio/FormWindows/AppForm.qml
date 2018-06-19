import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "../RightRect" as RRect
import "../TopRect" as TRect
import "../LeftRect" as LRect
import "../CentralRect" as CRect

import "../Widgets"

Item
{
    anchors.fill: parent

    RRect.RightRect
    {
        id: rightRect

        anchors.right: parent.right
        anchors.top: topRect.bottom
        anchors.bottom: parent.bottom
    }

    TRect.TopRect
    {
        id: topRect

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.left: parent.left
    }

    CRect.CentralRect
    {
        id: centrRect
        x: 0
        y: 0

        anchors.left: parent.left
        anchors.top: topRect.bottom
        anchors.right: rightRect.left
        anchors.bottom: parent.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
    }

    DropShadow
    {
        id: topRectShadow
        anchors.fill: source
        cached: true
        horizontalOffset: 3
        verticalOffset: 5
        radius: 9.0
        samples: 16
        color: Qt.hsla(0.0, 0.0, 0.1, 0.7)
        smooth: true
        source: topRect
    }
}
