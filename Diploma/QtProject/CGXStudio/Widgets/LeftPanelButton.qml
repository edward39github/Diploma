import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0 as FX

TabButton
{
    property color colorButton: Qt.hsla(0.63, 0.03, 0.25, 1.0)
    property color colorButtonChecked: Qt.hsla(0.0, 0.0, 0.7, 1.0)
    property string iconPath: Icons.icon("upload")
    property int iconHeight: 24
    property int iconWidth: 24

    id: mainwidget

    anchors.left: parent.left
    anchors.right: parent.right

    height: 60

    checkable: true
    checked: false
    autoExclusive: true

    contentItem: Item
    {
        Image
        {
            id: img
            width: iconWidth
            height: iconHeight
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
            source: iconPath
            smooth: true
            mipmap: true
            visible: false
        }
        FX.ColorOverlay
        {
            id: colorizer

            anchors.fill: img
            source: img
            color: mainwidget.checked ? colorButton : colorButtonChecked
        }
        FX.DropShadow
        {
            source: colorizer
            anchors.fill: source
            cached: true
            horizontalOffset: 1
            verticalOffset: 1
            radius: 4.0
            samples: 16
            color: Qt.hsla(0.0, 0.0, 0.1, 0.7)
            smooth: true
        }
    }

    background: Rectangle
    {
        anchors.fill: parent
        color: mainwidget.checked ? colorButtonChecked : colorButton
    }
}
