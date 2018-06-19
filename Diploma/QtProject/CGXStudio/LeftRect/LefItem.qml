import QtQuick 2.9
import QtQuick.Controls 2.3

Button
{
    property string iconPath: Icons.icon("upload")
    property color colorButton: Qt.hsla(0.77, 0.34, 0.64, 1.0)
    property color colorButtonPressed: Qt.hsla(0.77, 0.34, 0.74, 1.0)

    id: mainwidget

    height: 45
    width: 150

    opacity: 0.6

    checkable: true

    contentItem: Rectangle
    {
        id: contItem
        anchors.fill: mainwidget

        color: Qt.hsla(0.0, 0.0, 0.0, 0.0)

        Image
        {
            width: 32
            height: 32
            fillMode: Image.Stretch
            anchors.centerIn: parent
            source: iconPath
            smooth: true
            mipmap: true
        }
    }
    background: Rectangle
    {
        anchors.fill: mainwidget
        color: Qt.hsla(0.0, 0.0, 0.0, 0.0)
    }
}
