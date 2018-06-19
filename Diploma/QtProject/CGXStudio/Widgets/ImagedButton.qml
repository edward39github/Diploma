import QtQuick 2.9
import QtQuick.Controls 2.3

Button
{
    id: button

    height: 64
    width: 64

    property string iconPath: Icons.icon("upload")
    property int iconSize: 32
    property color colorButton: Qt.hsla(0.0, 0.0, 0.0, 0.0)
    property color colorButtonPressed: Qt.hsla(0.0, 0.0, 0.7, 0.7)
    property int radiusButton: 10

    contentItem: Item
    {
        anchors.fill: button

        Image
        {
            width: iconSize
            height: iconSize
            fillMode: Image.Stretch
            anchors.centerIn: parent
            source: iconPath
            smooth: true
            mipmap: true
        }
    }

    background: Rectangle
    {
        anchors.fill: button
        radius: radiusButton
        border.width: 0
        color: button.pressed ? colorButtonPressed : colorButton
    }
}
