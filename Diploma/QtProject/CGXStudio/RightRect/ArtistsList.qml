import QtQuick 2.9
import QtQuick.Controls 2.3
import "../Widgets"


ListView
{
    spacing: 1
    delegate: Item
    {
        height: 60
        Image
        {
            id: iconImg
            width: 40
            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            source: iconPath
            fillMode: Image.Stretch
            scale: 1
            smooth: true
        }
        Text
        {
            text: name
            anchors.left: iconImg.left
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            color: Qt.hsla(0.5, 0.0, 0.9, 1.0)
        }

        SwitchButtonWidget
        {
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            checked: isChecked
            thin: 1
            width: 36
            height: 20
        }
    }
    model: ListModel {
        ListElement {
            name: "car_rastr"
            iconPath: Icons.userIcon("01")
            isChecked: false
        }

        ListElement {
            name: "description"
            iconPath: Icons.userIcon("02")
            isChecked: true
        }

        ListElement {
            name: "car_svg"
            iconPath: Icons.userIcon("03")
            isChecked: false
        }

        ListElement {
            name: "car_vector"
            iconPath: Icons.userIcon("04")
            isChecked: true
        }
    }
}
