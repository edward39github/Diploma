import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle
{
    id: mainrect
    width: 280
    height: 720
    color: Qt.hsla(0.0, 0.0, 0.0, 0.0)
    border.width: 1
    border.color: Qt.hsla(0.127, 0.0, 1.0, 0.2)

    TabBar
    {
        id: bar
        height: 30
        spacing: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.rightMargin: 1
        anchors.leftMargin: 1
        anchors.bottomMargin: 1
        onCurrentIndexChanged: { stack.currentIndex = bar.currentIndex }
        background: Rectangle
        {
            anchors.fill: parent
            color: Qt.hsla(0.0, 0.0, 0.39, 1.0)
        }

        TabButton
        {
            id: tabFiles
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            checked: true
            contentItem: Text
            {
                anchors.fill: tabFiles
                color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
                text: qsTr("Файлы")
                anchors.verticalCenter: parent.verticalCenter
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
                implicitWidth: parent.width
                implicitHeight: parent.height
                anchors.fill: parent
                radius: 0
                border.width: 0
                color: tabFiles.checked ? Qt.hsla(0.0, 0.0, 0.8, 0.9) : Qt.hsla(0.0, 0.0, 0.6, 0.7)
            }
        }

        TabButton
        {
            id: tabTasks
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            checked: false

            contentItem: Text
            {
                anchors.fill: tabTasks
                color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
                text: qsTr("Асеты")
                anchors.verticalCenter: parent.verticalCenter
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
                implicitWidth: parent.width
                implicitHeight: parent.height
                anchors.fill: parent
                radius: 0
                border.width: 0
                color: tabTasks.checked ? Qt.hsla(0.0, 0.0, 0.8, 0.9) : Qt.hsla(0.0, 0.0, 0.6, 0.7)
            }
        }
    }

    StackLayout
    {
        id: stack
        anchors.top: mainrect.top
        anchors.left: mainrect.left
        anchors.right: mainrect.right
        anchors.bottom: bar.top
        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        currentIndex: bar.currentIndex

        ListView
        {
            anchors.fill: parent
            spacing: 0
            delegate: Item
            {
                height: 50
                width: parent.width
                Image
                {
                    id: imgFile
                    width: 30
                    height: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    source: Icons + iconPath
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                    mipmap: true
                }
                Text
                {
                    text: name
                    font.bold: true
                    anchors.left: imgFile.right
                    anchors.leftMargin: 5
                    anchors.verticalCenter: parent.verticalCenter
                    color: Qt.hsla(0.5, 0.0, 0.9, 1.0)
                    elide: Text.ElideRight
                }
                Image
                {
                    width: 12
                    height: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    anchors.verticalCenter: parent.verticalCenter
                    source: Icons + "remove.png"
                    fillMode: Image.Stretch
                    scale: 1
                    smooth: true
                    mipmap: true
                }

                Rectangle
                {
                    height: 1
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    color: Qt.hsla(0.127, 0.0, 1.0, 0.2)
                }
            }
            model: ListModel {
                ListElement {
                    name: "car_rastr"
                    iconPath: "files/png.png"
                }

                ListElement {
                    name: "description"
                    iconPath: "files/txt.png"
                }

                ListElement {
                    name: "car_svg"
                    iconPath: "files/svg.png"
                }

                ListElement {
                    name: "car_vector"
                    iconPath: "files/ai.png"
                }
            }
        }

        ListView
        {   
            anchors.fill: parent
            spacing: 0
            delegate: Item
            {
                height: 50
                width: parent.width
                Image
                {
                    id: imgAset
                    width: 30
                    height: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    source: Icons + "package.png"
                    fillMode: Image.Stretch
                    scale: 1
                    smooth: true
                    mipmap: true
                }

                Text
                {
                    text: name
                    anchors.left: imgAset.right
                    anchors.leftMargin: 5
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    color: Qt.hsla(0.5, 0.0, 0.9, 1.0)
                }
                Image
                {
                    width: 12
                    height: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    anchors.verticalCenter: parent.verticalCenter
                    source: Icons + "remove.png"
                    fillMode: Image.Stretch
                    scale: 1
                    smooth: true
                    mipmap: true
                }
                Rectangle
                {
                    height: 1
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    color: Qt.hsla(0.127, 0.0, 1.0, 0.2)
                }
            }
            model: ListModel
            {
                ListElement { name: "Orion" }
                ListElement { name: "Shrek" }
                ListElement { name: "Main character" }
                ListElement { name: "Vector field" }
            }
        }
    }
}
