import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Rectangle
{
    id: mainrect

    color: Qt.hsla(0.53, 0.2, 0.25, 1.0)
    border.width: 0
    border.color: Qt.hsla(0.127, 0.0, 1.0, 0.2)
    Rectangle
    {
        anchors.fill: parent
        color: Qt.hsla(0.28, 0.0, 0.6, 0.2)
    }

    ListView
    {
        anchors.fill: parent
        anchors.topMargin: 5
        spacing: 5
        delegate: Rectangle
        {
            x: 5
            height: 100
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
                source: Icons.icon("brain")
                smooth: true
                mipmap: true
                visible: false
            }
            ColorOverlay
            {
                id: iconCO
                anchors.fill: iconImage
                source: iconImage
                color: Qt.hsla(0.94, 0.34, 0.8, 1.0)
            }

            Text
            {
                id: title
                anchors.right: parent.right
                anchors.rightMargin: 5
                color: Qt.hsla(0.53, 0.2, 0.8, 0.7)
                text: model.name
                styleColor: "#797979"
                font.family: "Arial"
                font.bold: true
                elide: Text.ElideRight
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 7
                anchors.leftMargin: 25
                font.pointSize: 14
            }

            Text
            {
                id: description

                color: Qt.hsla(0.0, 0.0, 0.7, 1.0)
                text: model.descript
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
            ColorOverlay
            {
                id: cornerCO
                anchors.fill: cornerImage
                source: cornerImage
                color: Qt.hsla(0.53, 0.6, 0.6, 1.0)
            }

            Image
            {
                id: cornerImage
                width: 8
                height: 8
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.topMargin: 0
                anchors.rightMargin: 0
                source: Icons.icon("corner")
                smooth: true
                visible: false
                scale: 0.8

            }
        }
        model: ListModel
        {
            ListElement
            {
                name: "Модификация оружия"
                descript: "Воссоздание элементов из второй ревизии, а также замена текстуры рукояти."
            }

            ListElement
            {
                name: "Смена времени года окружения"
                descript: "Сменить цвет растительности и увеличить её колличество, убрать лужи"
            }
            ListElement
            {
                name: "Разрушение объекта"
                descript: "Подготовить топологию сетки объекта, используя референс COPILOT"
            }
            ListElement
            {
                name: "Детализация персонажа"
                descript: "Для детализации персонажа необходимо:
        • разработать детали одежды
        • доработать исходники айтемов
        • детализировать кожу на скульптинге
                    "
            }
        }
    }
}
