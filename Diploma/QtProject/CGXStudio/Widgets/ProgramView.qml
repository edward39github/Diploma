import QtQuick 2.9
import QtGraphicalEffects 1.0

import "../Widgets"


Rectangle
{

    width: parent.width
    height: 80
    color: Qt.hsla(0.0, 0.0, 1.0, 0.3)

    Item
    {
        id: content

        anchors.fill: parent

        PathView
        {
            property int itemSize: 70

            id: view
            anchors.fill: parent

            preferredHighlightBegin: 0.5
            preferredHighlightEnd: 0.5

            delegate: RoundImageWidget
            {
                width: PathView.size
                height: PathView.size

                radiusImage: PathView.size / 2

                opacity: PathView.opacity
                smooth: true
                iconPath: Icons.programIcon(icon)

                MouseArea
                {
                    anchors.fill: parent
                    onClicked: view.currentIndex = index
                }
            }


            path: Path
            {
                startX: 0
                startY: view.height / 2
                PathAttribute { name: "size"; value: view.itemSize / 7}
                PathAttribute { name: "opacity"; value: 1.0 / 7}

                PathAttribute { name: "size"; value: view.itemSize / 6}
                PathAttribute { name: "opacity"; value: 1.0 / 6}
                PathLine { x: view.width / 6; y: view.height / 2}

                PathAttribute { name: "size"; value: view.itemSize / 5}
                PathAttribute { name: "opacity"; value: 1.0 / 5}
                PathLine { x: view.width / 5; y: view.height / 2 }

                PathAttribute { name: "size"; value: view.itemSize / 4}
                PathAttribute { name: "opacity"; value: 1.0 / 4}
                PathLine { x: view.width / 4; y: view.height / 2 }

                PathAttribute { name: "size"; value: view.itemSize / 3}
                PathAttribute { name: "opacity"; value: 1.0 / 3}
                PathLine { x: view.width / 3; y: view.height / 2 }

                PathAttribute { name: "size"; value: view.itemSize / 2}
                PathAttribute { name: "opacity"; value: 1.0 / 2}
                PathLine { x: view.width / 2; y: view.height / 2 }

                PathAttribute { name: "size"; value: view.itemSize }
                PathAttribute { name: "opacity"; value: 1.0 }
                PathLine { x: view.width / 1; y: view.height / 2 }
            }

            model:ListModel
            {
                ListElement { icon: "houdini" }
                ListElement { icon: "maya" }
                ListElement { icon: "painter" }
                ListElement { icon: "designer" }
                ListElement { icon: "PS" }
                ListElement { icon: "zbrush" }
                ListElement { icon: "nuke" }
                ListElement { icon: "blender" }
                ListElement { icon: "UE" }
            }
        }
    }
    DropShadow
    {
        source: content
        anchors.fill: source
        cached: true
        horizontalOffset: 3
        verticalOffset: 3
        radius: 7.0
        samples: 16
        color: Qt.hsla(0.0, 0.0, 0.1, 0.7)
        smooth: true
    }
}
