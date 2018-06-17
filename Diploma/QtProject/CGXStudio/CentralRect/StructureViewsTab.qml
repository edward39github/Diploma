import QtQuick 2.9
import QtQuick.Controls 2.2

TabButton
{
    property string tabText: ""

    id: mainwidget

    height: 40
    width: 110
    checked: false

    anchors.top: parent.top
    anchors.bottom: parent.bottom

    contentItem: Text
    {
        anchors.fill: mainwidget
        text: tabText
        color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
        elide: Text.ElideNone

        font.weight: Font.ExtraBold
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 10

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle
    {
        radius: 0
        border.width: 0
        color: mainwidget.checked ? Qt.hsla(0.0, 0.0, 0.6, 0.8) : Qt.hsla(0.0, 0.0, 0.4, 0.7)
    }
}
