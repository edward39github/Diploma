import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX

Button
{
    id: mainwidget

    width: 300
    height: 80

    background: Rectangle
    {
        anchors.fill: mainwidget

        color: Qt.hsla(0.111, 0.71, 0.84, 0.3)
    }

    contentItem: Item
    {
        id: rectangle
        implicitWidth: parent.width
        implicitHeight: parent.height
        anchors.fill: parent

        Image
        {
            id: img

            width: 24
            height: 24
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 10
            fillMode: Image.PreserveAspectFit
            source: Icons + "tasks.png"
            smooth: true
            mipmap: true
            visible: false
        }
        FX.ColorOverlay
        {
            anchors.fill: img
            source: img
            color: Qt.hsla(0.94, 0.34, 0.8, 1.0)
        }

        Label
        {
            id: title
            color: Qt.hsla(0.111, 0.71, 0.64, 1.0)
            text: qsTr("Детализация персонажа")
            styleColor: "#797979"
            font.family: "Arial"
            font.bold: true
            anchors.top: img.top
            anchors.topMargin: -1
            anchors.left: img.right
            anchors.leftMargin: 5
            font.pointSize: 16
        }

        Text
        {
            id: description

            color: Qt.hsla(0.0, 0.0, 0.7, 1.0)
            text: "Для детализации персонажа необходимо:
      • разработать детали одежды
      • доработать исходники айтемов
      • детализировать кожу на скульптинге
"
            elide: Text.ElideRight
            font.family: "Arial"
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            anchors.top: title.bottom
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: title.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 6
        }
    }
}
