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
        if( row % 2 == 0 ){ return Qt.hsla(0.0, 0.0, 0.39, 1.0); }
        return Qt.hsla(0.0, 0.0, 0.41, 1.0);
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

    delegate: Rectangle
    {
        color:  getRowColor(index)
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
            source: Icons + "folders/" + model.fileName + ".png"

            fillMode: Image.Stretch

            visible: false
        }

        DropShadow
        {
            anchors.fill: iconImg
            horizontalOffset: 2
            verticalOffset: 2
            radius: 4.0
            samples: 17
            color: Qt.hsla(0.0, 0.0, 0.3, 1.0)
            source: iconImg
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

        //        Rectangle
        //        {
        //            id: sizeArea

        //            visible: model.isFile

        //            height: 16
        //            width: 70

        //            anchors.right: parent.right
        //            anchors.bottom: parent.bottom

        //            anchors.rightMargin: 0
        //            anchors.bottomMargin: 0

        //            color: Qt.hsla(0.0, 0.0, 1.0, 0.1)

        //            Text
        //            {
        //                anchors.centerIn: parent
        //                anchors.margins: [2, 0, 2, 0]
        //                color: Qt.hsla(0.5, 0.0, 0.85, 0.7)
        //                text: model.sizeFile
        //                elide: Text.ElideRight
        //                font.weight: Font.Bold
        //                font.family: "Arial"
        //                font.bold: false
        //                font.pixelSize: 12
        //                horizontalAlignment: Text.AlignHLeft
        //                verticalAlignment: Text.AlignVCenter
        //            }
        //        }
    }
}

