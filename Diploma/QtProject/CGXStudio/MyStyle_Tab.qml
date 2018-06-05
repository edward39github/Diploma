import QtQuick 2.9
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

TabViewStyle {
    tab: Item {

        implicitWidth: 150
        implicitHeight: 70

        Rectangle
        {
            anchors.fill: parent
            anchors.bottomMargin: 0
            radius: 0
            border.width: 0
            color:"#333333"
        }
        Image
        {
            id: iconImage
            anchors.centerIn: parent
            anchors.margins: 5
            fillMode: Image.Stretch
            source: control.getTab(styleData.index).icon
            visible: false
        }
        Colorize {
            anchors.fill: iconImage
            source: iconImage
            hue: 0.5
            saturation: 0.5
            lightness: 0
        }
    }
}
