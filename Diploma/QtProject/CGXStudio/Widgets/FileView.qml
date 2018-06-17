import QtQuick 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.2

TreeView
{
    id: view
    model: sysModel
    rootIndex: rootPathIndex
    frameVisible: false
    style: TreeViewStyle
    {

        property int rowHeight: 40


        function getRowColor(alternate, selected)
        {
            if( selected ){ return Qt.hsla(0.55, 0.92, 0.55, 0.15) }
            if( alternate ){ return treestyle.alternateBackgroundColor }
            return treestyle.backgroundColor
        }


        id: treestyle

        alternateBackgroundColor: Qt.hsla(0.0, 0.0, 0.41, 1.0)
        indentation: 20

        scrollBarBackground: Rectangle { color: Qt.hsla(0.0, 0.0, 0.0, 0.0) }
        handle: Rectangle { color: Qt.hsla(0.0, 0.0, 0.0, 0.0) }

        // ScrollView components
        incrementControl: Rectangle { color: Qt.hsla(0.0, 0.0, 0.0, 0.0) }
        decrementControl: Rectangle { color: Qt.hsla(0.0, 0.0, 0.0, 0.0) }
        backgroundColor: Qt.hsla(0.0, 0.0, 0.39, 1.0)
        // ScrollView components end


        // Item delegates
        rowDelegate: Rectangle
        {
            id: rowRect
            height: rowHeight
            color: getRowColor(styleData.alternate, styleData.selected )
        }
        branchDelegate: Item
        {
            width: Math.round(rowHeight * 0.5)
            height: rowHeight

            anchors.verticalCenter: rowRect.verticalCenter
            anchors.left: rowRect.left

            Image
            {
                width: 10
                height: 10

                anchors.centerIn: parent

                smooth: true
                source: styleData.hasChildren ? styleData.isExpanded ? Icons + "branchOpened.png" : Icons + "branchClosed.png" : ""

                fillMode: Image.Stretch
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked: { styleData.isExpanded ? view.collapse(styleData.index) : view.expand(styleData.index)}
            }
        }
        itemDelegate: Item
        {
            Image
            {
                id: iconImg

                width: 24
                height: 24

                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0

                smooth: true
                source: model.isFile ? "file:///" + model.ficon : Icons + "folders/folder.png"

                fillMode: Image.Stretch
            }

            Text
            {
                id: nameTxt

                anchors.left: iconImg.right
                anchors.leftMargin: 10
                anchors.verticalCenter: iconImg.verticalCenter
                color: Qt.hsla(0.5, 0.0, 0.75, 1.0)
                text: model.fileName
                elide: Text.ElideRight
                font.weight: Font.Normal
                font.family: "Arial"
                font.bold: false
                font.pixelSize: 16
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }
        }
        // Item delegates end

        headerDelegate: Rectangle
        {
            color: Qt.hsla(0.0, 0.0, 0.0, 0.0)
        }



    } // Style end



    TableViewColumn
    {
        title: "Name"
        role: "fileName"
        resizable: true
    }
}
