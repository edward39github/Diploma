import QtQuick 2.9
import QtQuick.Controls 2.3

RadioButton
{
    property string iconPath: Icons + "supervisor.png"
    property int imagePadding: 15

    id: mainwidget

    width: 48
    height: 48
    autoExclusive: true
    checked: true
    checkable: true

    indicator: Rectangle
    {
        implicitWidth: parent.width
        implicitHeight: parent.height
        radius: Math.round(mainwidget.width * 0.5)
        color: mainwidget.checked ? "#662e95e8" : "#668c8c8c"
        border.width: 0
        Image
        {
            width: mainwidget.width - imagePadding
            height: mainwidget.width - imagePadding
            fillMode: Image.Stretch
            anchors.centerIn: parent
            source: iconPath
            smooth: true
            mipmap: true
        }
    }
}
