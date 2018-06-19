import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../Widgets"

ListView
{
    model: ListModel
    {
        ListElement
        {
            name: "JOB"
            value: "../Projects/Libs/textures"
            category: "Проект"
            descript: "Содержит пары { название : ссылка }. Данное поле имеет тип словарь и хранит электронные почты заказчика. Ключом является название (например, «Основная»), а значением – почта."
            state: true
        }
        ListElement
        {
            name: "PYCACHE"
            value: "file:///C:/Python/cache/__init__.py"
            category: "Системная"
            descript: "NameError - если встречается недопустимое имя переменной
ReplicationError - если переменная содержит себя (или содержит переменные, которые содержат сами или переменные на уровне выше)
"
            state: false
        }
        ListElement
        {
            name: "TCOUNT"
            value: "7"
            category: "Системная"
            descript: "Данное поле имеет тип список и хранит расширения файлов, которые может запустить программа. Расширение хранится в виде строки"
            state: true
        }
        ListElement
        {
            name: "CGLIB"
            value: "${USER}/Desktop/Library"
            category: "Пользовательская"
            descript: "Данное поле имеет тип список и хранит ссылки на вебсайты заказчика. Ссылка хранится в строке. Расширение хранится в виде строки"
            state: true
        }
    }

    spacing: 0

    delegate: Item
    {
        width: 300
        height: 147
        Rectangle
        {
            id: rectangle1
            color: Qt.hsla(0.0, 0.0, 1.0, 0.1)
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: -5
            anchors.topMargin: 10
            anchors.fill: parent

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: 290
                height: 30
                color: Qt.hsla(0.0, 0.0, 0.0, 0.0)

                SwitchButtonWidget {
                    id: switchButtonWidget
                    x: 8
                    y: 5
                    width: 32
                    height: 16

                    anchors.verticalCenter: parent.verticalCenter

                    checked: model.state
                }

                Text {
                    id: category
                    color: "#c9c9c9"
                    text: model.category
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 51
                    anchors.rightMargin: 8
                    font.bold: true
                    font.family: "Arial"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignRight
                    anchors.fill: parent
                    font.pixelSize: 13
                }
            }

            Text {
                id: name
                x: 5
                y: 32
                width: 278
                height: 23
                color: "#c2c2c2"
                text: model.name
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 16
            }

            Text {
                id: value

                width: 251
                height: 19
                color: "#c2c2c2"
                text: model.value
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                elide: Text.ElideRight
                font.bold: false

                anchors.left: parent.left
                anchors.top: name.bottom
                anchors.right: parent.right

                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.topMargin: 0
            }

            Text {
                id: description

                height: 51
                color: "#b3c2c2c2"
                text: model.descript
                font.family: "Arial"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignTop
                font.pixelSize: 13
                horizontalAlignment: Text.AlignLeft
                font.bold: false
                wrapMode: Text.WrapAnywhere

                anchors.left: parent.left
                anchors.top: value.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
            }

        }
    }
    RowLayout
    {
        id: panel

        height: 30

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("add")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("remove")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ImagedButton
        {
            height: parent.height
            width: Layout.preferredWidth
            iconPath: Icons.icon("copy")
            iconSize: 16
            radiusButton: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
