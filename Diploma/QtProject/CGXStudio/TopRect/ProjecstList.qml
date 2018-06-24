import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Rectangle
{
    id: mainrect
    color: Qt.hsla(0.53, 0.2, 0.27, 1.0)

    Rectangle
    {
        anchors.fill: parent
        color: "#33ffffff"
    }

    ListView
    {
        anchors.fill: parent
        anchors.topMargin: 5
        spacing: 5
        delegate: Rectangle
        {
            x: 5
            height: 50
            width: parent.width - 10
            color: Qt.hsla(0.28, 0.0, 0.6, 0.2)

            Image
            {
                id: iconImage

                width: 16
                height: 16
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.topMargin: 11
                fillMode: Image.PreserveAspectFit
                source: Icons.icon("deadline")
                smooth: true
                mipmap: true
            }

            Text
            {
                id: title

                anchors.right: parent.right
                anchors.rightMargin: 5
                color: Qt.hsla(0.53, 0.0, 0.8, 0.7)
                text: model.title
                styleColor: "#797979"
                font.family: "Arial"
                font.bold: true
                elide: Text.ElideRight
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 7
                anchors.leftMargin: 25
                font.pointSize: 12
            }

            Text
            {
                id: deadline

                color: Qt.hsla(0.0, 0.0, 0.7, 1.0)
                text: model.deadline
                elide: Text.ElideRight
                wrapMode: Text.WrapAnywhere
                font.family: "Arial"
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignTop
                anchors.top: title.bottom
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 7
                anchors.left: title.left
                anchors.leftMargin: 1
                anchors.right: parent.right
                anchors.rightMargin: 5
            }
        }
        model: ListModel
        {
            ListElement
            {
                title: "Визуализация для ЧИСТОГРАД"
                deadline: "Осталось 22 часа"
            }

            ListElement
            {
                title: "RazerSpirit"
                deadline: "Осталось 14 часов"
            }

            ListElement
            {
                title: "StressTest CinebenchR19"
                deadline: "Осталось 14 часов"
            }
            ListElement
            {
                title: "Реклама компании Yves Roche"
                deadline: "Осталось 36 часов"
            }
        }
    }
}
