import QtQuick 2.9

Rectangle
{

    width: parent.width
    height: 70
    color: Qt.hsla(0.0, 0.0, 1.0, 0.0)

    PathView
    {
        property int itemSize: 32

        id: view
        anchors.fill: parent
//            highlight: Rectangle
//            {
//                width: 80
//                height: 80
//                color: "lightsteelblue"
//            }
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5

        delegate: Image
        {
            width: PathView.size
            height: PathView.size
            opacity: PathView.opacity
            smooth: true
            source: Icons.programIcon(icon)
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

            PathAttribute { name: "size"; value: view.itemSize }
            PathAttribute { name: "opacity"; value: 0.25 }
            PathCurve
            {
                x: view.width / 5
                y: view.height / 2
            }
            PathCurve
            {
                x: view.width / 5 * 2
                y: view.height / 2
            }
            PathAttribute { name: "size"; value: view.itemSize }
            PathAttribute { name: "opacity"; value: 0.5 }
            PathPercent { value: 0.49 }

            PathLine { relativeX: 0; relativeY: 0 } // разделитель

            PathAttribute { name: "size"; value: view.itemSize * 2 }
            PathAttribute { name: "opacity"; value: 1 }
            PathLine
            {
                x: view.width / 5 * 3
                y: view.height / 2
            }
            PathAttribute { name: "size"; value: view.itemSize * 2 }
            PathAttribute { name: "opacity"; value: 1 }
            PathPercent { value: 0.51 }

            PathLine { relativeX: 0; relativeY: 0 } // разделитель

            PathAttribute { name: "size"; value: view.itemSize }
            PathAttribute { name: "opacity"; value: 0.5 }
            PathCurve
            {
                x: view.width / 5 * 4
                y: view.height / 2
            }
            PathCurve
            {
                x: view.width
                y: view.height / 2
            }
            PathPercent { value: 1 }
            PathAttribute { name: "size"; value: view.itemSize }
            PathAttribute { name: "opacity"; value: 0.25 }
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
