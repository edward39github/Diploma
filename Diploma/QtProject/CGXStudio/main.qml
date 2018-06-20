import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "RightRect" as RRect
import "TopRect" as TRect
import "LeftRect" as LRect
import "CentralRect" as CRect

import "FormWindows"
import "Widgets"

Window
{
    id: window
    visible: true
    width: 1600
    height: 900
    color: "white"
    title: "CGX Artist | \"Реклама компании Yves Roche\""

    TRect.TopRect
    {
        id: topRect

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Rectangle
    {
        id: viewsPanel

        width: 70

        anchors.left: parent.left
        anchors.top: topRect.bottom
        anchors.bottom: parent.bottom

        color: Qt.hsla(0.63, 0.03, 0.25, 1.0)

        Column
        {
            id: viewsBar

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top

            height: 300

            spacing: 0

            LeftPanelButton
            {
                id: projectViewButton
                iconPath: Icons.icon("projectView")
                checked: true
                onClicked: { views.currentIndex = 0 }
            }
            LeftPanelButton
            {
                id: programsViewButton
                iconPath: Icons.icon("programsView")
                onClicked: { views.currentIndex = 1 }
            }
            LeftPanelButton
            {
                id: variablesViewButton
                iconPath: Icons.icon("variablesView")
                onClicked: { views.currentIndex = 2 }
            }
            LeftPanelButton
            {
                id: libraryViewButton
                iconPath: Icons.icon("library")
                onClicked: { views.currentIndex = 2 }
            }
        }

        LeftPanelButton
        {
            id: launchProgramButton
            iconPath: Icons.icon("launchProgram")
            anchors.bottom: settingsViewButton.top
            autoExclusive: false
            colorButtonChecked: Qt.hsla(0.2, 0.7, 0.4, 1.0)
        }

        LeftPanelButton
        {
            id: settingsViewButton
            iconPath: Icons.icon("settingsView")
            anchors.bottom: parent.bottom
            onClicked: { views.currentIndex = 3 }
        }
    }

    StackLayout
    {
        id: views

        anchors.left: viewsPanel.right
        anchors.top: topRect.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        currentIndex: 0

        ProjectView
        {
            anchors.fill: parent
        }
    }

    DropShadow
    {
        id: topRectShadow
        anchors.fill: source
        cached: true
        horizontalOffset: 3
        verticalOffset: 5
        radius: 9.0
        samples: 16
        color: Qt.hsla(0.0, 0.0, 0.1, 0.7)
        smooth: true
        source: topRect
    }
}
