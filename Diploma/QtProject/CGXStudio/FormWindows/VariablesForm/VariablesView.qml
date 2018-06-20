import QtQuick 2.9
import QtQuick.Controls 2.2
import "../../Widgets"

Rectangle
{
    id: mainrect
    width: 1600
    height: 900
    color: "#636363"

    Rectangle
    {
        id: attrRect
        width: 372
        color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Column
        {
            InputWidget
            {
                placeHolder: "введите название переменной"
            }
            InputWidget
            {
                placeHolder: "введите название переменной"
            }
            InputWidget
            {
                placeHolder: "введите название переменной"
            }
        }
    }

    Rectangle
    {
        id: categoriesRect
        x: 1340
        width: 260
        color: "#808080"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }
}
