import QtQuick 2.9
import QtQuick.Controls 2.3

Button
{
    property string iconPath: Icons + "upload.png"
    property color colorButton: Qt.hsla(0.77, 0.34, 0.64, 1.0)
    property color colorButtonPressed: Qt.hsla(0.77, 0.34, 0.74, 1.0)
    property string textButton: "Отправить"
    property int radiusButton: 10

    id: mainwidget
    height: 45
    width: 150

    contentItem: Rectangle{
        id: rectangle
        color: "#00ffffff"
        Text {
            id: txt
            height: 25
            anchors.left: parent.left
            anchors.leftMargin: 15
            color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
            text: qsTr("Отправить")
            anchors.verticalCenter: parent.verticalCenter
            elide: Text.ElideNone
            font.weight: Font.ExtraBold
            font.family: "Arial"
            font.bold: true
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        Image {
            width: 20
            height: 20
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenterOffset: 0
            anchors.left: txt.right
            anchors.leftMargin: 6
            anchors.verticalCenter: parent.verticalCenter
            source: iconPath
        }
    }

    background: Rectangle {
        implicitWidth: parent.width
        implicitHeight: parent.height
        anchors.fill: parent
        radius: radiusButton
        border.width: 0
        color: mainwidget.pressed ? colorButtonPressed : colorButton
    }
}
