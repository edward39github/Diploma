import QtQuick 2.9
import QtQuick.Controls 2.3

Switch {

    property int ctrlPadding: 3
    property int thin: 1


    id: mainwidget
    text: qsTr("Switch")

    width: 48
    height: 26

    background: Rectangle
    {
        id: bckgrnd
        implicitWidth: parent.width
        implicitHeight: parent.height
        border.width: 0
        border.color: mainwidget.checked ? Qt.hsla(0.363, 0.52, 0.58, 1.0) : Qt.hsla(0.0, 0.52, 0.58, 1.0)
        radius: Math.round(height/2)
        color: mainwidget.checked ? Qt.hsla(0.36, 0.35, 0.6, 1.0) : Qt.hsla(0.0, 0.35, 0.6, 1.0)
    }

    indicator: Rectangle
    {
        anchors.left: bckgrnd.left
        anchors.top: bckgrnd.top
        anchors.right: bckgrnd.right
        anchors.bottom: bckgrnd.bottom

        anchors.leftMargin: ctrlPadding + thin
        anchors.rightMargin: ctrlPadding + thin
        anchors.topMargin: ctrlPadding + thin
        anchors.bottomMargin: ctrlPadding + thin

        color: Qt.hsla(0.5, 0.0, 0.0, 0.0)

        Rectangle
        {
            implicitWidth: parent.height
            implicitHeight: parent.height
            x: mainwidget.checked ? parent.width - width: 0
            anchors.verticalCenter: parent.verticalCenter
            radius: Math.round(implicitHeight/2)
            color: Qt.hsla(0.5, 0.0, 0.99, 1.0)
        }
    }
}
