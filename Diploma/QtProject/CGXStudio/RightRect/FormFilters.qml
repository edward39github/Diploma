import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../Widgets"

Rectangle
{
    id: rectFiles
    width: 280
    height: 720
    color: "#4c4c4c"
    opacity: 0.8
    anchors.rightMargin: 0
    anchors.bottomMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 0
    anchors.fill: parent

    Rectangle
    {
        id: pattern
        height: 40
        color: "#19ffffff"
        radius: 20
        border.color: "#b6b6b6"
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 40

        TextInput
        {
            id: patternInput

            color: "#ffffff"
            text: qsTr("")
            font.family: "Arial"
            echoMode: TextInput.Normal
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 14
        }

        Text
        {
            id: placeholderText
            text: "... введите шаблон фильтра"
            style: Text.Normal
            verticalAlignment: Text.AlignVCenter
            color: "#99ffffff"
            visible: !patternInput.text
            anchors.fill: patternInput
        }
    }


    Column
    {
        id: filtersRow
        height: 159
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: pattern.bottom
        anchors.topMargin: 29
        spacing: 26

        CheckerButtonWidget
        {
            x: 0
            y: 176
            width: 40
            height: 20

            buttonText: "Модели"
            checkedState: true
        }
        CheckerButtonWidget
        {
            x: 0
            y: 143
            width: 40
            height: 20

            buttonText: "Текстуры"
            checkedState: true
        }
        CheckerButtonWidget
        {
            x: 0
            y: 110
            width: 40
            height: 20

            buttonText: "Скрипты"
            checkedState: true
        }
        CheckerButtonWidget
        {
            x: 0
            y: 78
            width: 40
            height: 20

            buttonText: "Референсы"
            checkedState: true
        }
    }

    Button
    {
        id: clearFilter
        x: 68
        width: 145
        height: 34
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: filtersRow.bottom
        anchors.topMargin: 24
        checked: true
        contentItem: Text
        {
            anchors.fill: clearFilter
            color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
            text: qsTr("Очистить фильтр")
            anchors.verticalCenter: parent.verticalCenter
            elide: Text.ElideNone
            font.weight: Font.ExtraBold
            font.family: "Arial"
            font.bold: true
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        background: Rectangle
        {
            implicitWidth: parent.width
            implicitHeight: parent.height
            anchors.fill: parent
            radius: 6
            border.width: 1
            border.color: Qt.hsla(0.0, 0.0, 0.8, 0.7)
            color: clearFilter.pressed ? Qt.hsla(0.0, 0.0, 0.8, 0.9) : Qt.hsla(0.0, 0.0, 0.6, 0.7)
        }
    }

    Image
    {
        id: imageFilter
        x: 160
        y: 139
        width: 100
        height: 100
        opacity: 0.3
        source: Icons + "filterLarge.png"
    }

    Row
    {
        id: orderRow
        x: 98
        anchors.top: clearFilter.bottom
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5

        RadioButtonWidget
        {
            id: ascend

            iconPath: Icons + "ascending.png"
            width: 24
            height: 24
            checked: true
            checkable: true
            autoExclusive: true
        }

        RadioButtonWidget
        {
            id: descend

            iconPath: Icons + "descending.png"
            width: 24
            height: 24
            checked: false
            checkable: true
            autoExclusive: true
        }
    }

    Column {
        id: sortsRow
        x: -4
        y: 8
        height: 159
        anchors.rightMargin: 115
        spacing: 26
        anchors.right: parent.right
        anchors.top: orderRow.bottom
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.topMargin: 10

        SortItem {
            name: "Модели"
            num: "1"
            width: 122
            height: 20
        }

        SortItem {
            name: "Текстуры"
            num: "2"
            width: 122
            height: 20
        }

        SortItem {
            name: "Скрипты"
            num: "3"
            width: 122
            height: 20
        }

        SortItem
        {
            width: 122
            height: 20

            name: "Референсы"
            num: "4"
        }



    }

    Button {
        id: clearSort
        x: 76
        y: -7
        width: 145
        height: 34
        anchors.horizontalCenterOffset: 0
        contentItem: Text {
            color: Qt.hsla(0.5, 0.0, 1.0, 1.0)
            text: qsTr("Сбросить сортировку")
            font.weight: Font.ExtraBold
            font.pixelSize: 12
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: clearSort
            font.bold: true
            elide: Text.ElideNone
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: sortsRow.bottom
        checked: true
        background: Rectangle {
            color: clearSort.pressed ? Qt.hsla(0.0, 0.0, 0.8, 0.9) : Qt.hsla(0.0, 0.0, 0.6, 0.7)
            radius: 6
            implicitWidth: parent.width
            implicitHeight: parent.height
            border.color: Qt.hsla(0.0, 0.0, 0.8, 0.7)
            border.width: 1
            anchors.fill: parent
        }
        anchors.topMargin: 24
    }

    Image {
        id: imageSort
        x: 160
        y: 440
        width: 100
        height: 100
        z: 1
        source: Icons + "sortLarge.png"
        opacity: 0.3
    }

}
