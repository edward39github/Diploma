import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0 as FX

TabButton
{
    property color colorButton: Qt.hsla(0.127, 0.8, 0.7, 0.0)
    property color colorButtonChecked: Qt.hsla(0.111, 0.71, 0.64, 1.0)
    property string iconPath: "rcc/icons/upload.png"
    property int iconHeight: 48
    property int iconWidth: 48
    property int lineWidth: 1

    id: mainwidget
    anchors.bottom: parent.bottom
    anchors.top: parent.top
    checked: false
    contentItem: Rectangle
    {
        color: Qt.hsla(0.0, 0.0, 0.0, 0.0)
        Image
        {
            id: img
            width: iconWidth
            height: iconHeight
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            source: iconPath
            smooth: true
            visible: false
        }
        FX.ColorOverlay
        {
            anchors.fill: img
            source: img
            color: mainwidget.checked ? colorButtonChecked : Qt.hsla(0.5, 0.0, 0.9, 1.0)
        }
    }

    background: Rectangle
    {
        implicitWidth: parent.width
        implicitHeight: parent.height
        anchors.fill: parent
        radius: 0
        border.width: 0
        color: colorButton
        Rectangle
        {
            id: line

            height: lineWidth
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            color: mainwidget.checked ? colorButtonChecked : Qt.hsla(0.5, 0.0, 0.9, 1.0)
        }
    }
}
