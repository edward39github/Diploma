import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.3
import QtQuick.Dialogs 1.2

Rectangle
{
    id: win
    width: 800
    height: 450

    visible: true

    anchors.fill: parent
    //title: "Вход"

    //contentItem: Rectangle

    Image {
        id: bgImage
        anchors.fill: parent
        source: Icons.icon("loginBG")
        visible: off
    }
    GaussianBlur
    {
        source: bgImage
        anchors.fill: source
        radius: 24
        samples: 64
    }
}
