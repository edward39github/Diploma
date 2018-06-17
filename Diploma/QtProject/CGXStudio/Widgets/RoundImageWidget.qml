import QtQuick 2.10
import QtQuick.Window 2.10
import QtGraphicalEffects 1.0 as FX

Rectangle
{
    property string iconPath: "../rcc/icons/users/user.jpg"
    property int radiusImage: 16

    width: 32
    height: 32

    color: Qt.hsla(0.0, 0.0, 0.0, 0.0)

    Image
    {
        anchors.fill: parent
        source: iconPath
        mipmap: true
        layer.enabled: true
        layer.effect: FX.OpacityMask
        {
            maskSource: mask
        }
        Rectangle
        {
            id: mask
            radius: radiusImage
            anchors.fill: parent
            visible: false
        }
    }
}
