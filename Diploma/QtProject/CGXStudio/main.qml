import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3

import "RightRect" as RRect
import "TopRect" as TRect
import "LeftRect" as LRect
import "CentralRect" as CRect

import "Widgets"

Window
{
    id: window
    visible: true
    width: 1640
    height: 900
    title: qsTr("CGX Artist")

    RRect.RightRect
    {
        id: rightRect

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

    TRect.TopRect
    {
        id: topRect

        anchors.right: rightRect.left
        anchors.top: parent.top
        anchors.left: parent.left
    }

    LRect.LeftRect
    {
        id: leftRect

        anchors.left: parent.left
        anchors.top: topRect.bottom
        anchors.bottom: parent.bottom
    }

    CRect.CentralRect
    {
        id: centrRect
        x: 0
        y: 0

        anchors.left: leftRect.right
        anchors.top: topRect.bottom
        anchors.right: rightRect.left
        anchors.bottom: parent.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
    }
}
