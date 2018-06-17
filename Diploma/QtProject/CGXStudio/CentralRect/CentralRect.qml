import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle
{
    id: mainrect

    color: Qt.hsla(0.0, 0.0, 0.5, 1.0)
    border.width: 0
    border.color: Qt.hsla(0.0, 0.0, 0.39, 1.0)

    StructureViews
    {
        width: 330

        anchors.left: mainrect.left
        anchors.top: mainrect.top
        anchors.bottom: mainrect.bottom

        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
    }
}
