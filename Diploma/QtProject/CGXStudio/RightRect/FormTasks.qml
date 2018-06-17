import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0 as FX
import "../Widgets"

Rectangle
{
    id: rectFiles
    width: 280
    height: 720
    opacity: 0.8
    color: Qt.hsla(0.0, 0.0, 0.0, 0.0)
    anchors.rightMargin: 0
    anchors.bottomMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 0
    anchors.fill: parent

    ButtonWidget
    {
        id: buttonSend

        height: 45
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 20
        iconPath: Icons + "upload.png"
    }

    DragDropWidget
    {
        id: rectDragdrop

        height: 70
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: buttonSend.bottom
        anchors.rightMargin: 15
        anchors.leftMargin: 15
        anchors.topMargin: 20
    }

    Text
    {
        id: textHelp
        height: 30
        color: "#e6e6e6"
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top: rectDragdrop.bottom
        anchors.topMargin: 20
        text: "<p><span style=\"color:#e6e6e6\"> Для добавления</span><span style=\"color:#e5b962\"><b> файлов&nbsp;</b></span><span style=\"color:#e6e6e6\">или </span><span style=\"color:#e5b962\"><strong>асетов&nbsp;</strong></span><span style=\"color:#e6e6e6\">вам нужно перетащить их в область&nbsp;</span><span style=\"color:#7fb7a5\"><b>Dran + Drop</b></span></p>
"
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        textFormat: Text.RichText
    }

    FilesAsetsListWidget
    {
        id: listContent

        anchors.top: textHelp.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: editComment.top
        anchors.bottomMargin: 20
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }

    TextEdit {
        id: editComment

        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottomMargin: 20
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 20

        height: 200

        Text {
            text: "Комментарий к выполненной
задаче"
            color: Qt.hsla(0.5, 0.0, 0.9, 1.0)
            visible: !editComment.text
            anchors.fill: parent
            font.pixelSize: 16
        }
    }
}