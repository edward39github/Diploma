import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2
import Qt.labs.folderlistmodel 2.11
import QtGraphicalEffects 1.0

ListView
{

    property int rowHeight: 70

    function getRowColor(row)
    {
        if( row % 2 == 0 ){ return Qt.hsla(0.63, 0.03, 0.39, 1.0); }
        return Qt.hsla(0.63, 0.03, 0.41, 1.0);
    }

    function folderName(n)
    {
        if( n === "UE" ){ return "Проект на UE4"; }
        if( n === "final" ){ return "Финальный результат"; }
        if( n === "temp" ){ return "Временные файлы"; }
        if( n === "resources" ){ return "Ресурсы"; }
        if( n === "content" ){ return "Контент"; }
        if( n === "render" ){ return "Рендер"; }
        if( n === "references" ){ return "Референсы"; }
        if( n === "work" ){ return "Рабочие файлы"; }
        if( n === "notes.txt" ){ return "Заметки"; }

        return n
    }


    id: view
    model: FolderListModel
    {
        folder: "file:///C:/Users/edward/CG-Cooperation/Square"
        showFiles: false
    }
    highlight: Rectangle
    {
        color: "lightsteelblue"
        height: rowHeight
        width: parent.width
    }

    delegate: Rectangle
    {
        color: getRowColor(index)
        height: rowHeight
        width: parent.width

        Image
        {
            id: iconImg

            width: 32
            height: 32

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20

            smooth: true
            source: Icons.folderIcon(model.fileName, true)

            fillMode: Image.Stretch

            visible: false
        }

        ColorOverlay
        {
            id: colorizer

            anchors.fill: iconImg
            source: iconImg
            color: Qt.hsla(0.53, 0.2, 0.75, 1.0)
            visible: false
        }

        DropShadow
        {
            source: colorizer
            anchors.fill: source
            horizontalOffset: 2
            verticalOffset: 2
            radius: 4.0
            samples: 17
            color: Qt.hsla(0.0, 0.0, 0.3, 1.0)
        }

        Text
        {
            id: nameTxt

            anchors.left: iconImg.right
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -10
            color: Qt.hsla(0.5, 0.0, 0.75, 1.0)
            text: folderName(model.fileName)
            elide: Text.ElideRight
            font.weight: Font.ExtraBold
            font.family: "Arial"
            font.bold: false
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }

        Text
        {
            id: pathTxt

            anchors.top: nameTxt.bottom
            anchors.left: iconImg.right
            anchors.right: parent.right
            anchors.leftMargin: 20
            anchors.rightMargin: 10
            anchors.topMargin: 5
            color: Qt.hsla(0.5, 0.0, 0.75, 0.3)
            text: model.filePath
            elide: Text.ElideRight
            font.weight: Font.Normal
            font.family: "Arial"
            font.bold: false
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea
        {
            anchors.fill: parent
            onClicked: parent.ListView.view.currentIndex = index
        }
    }
}

