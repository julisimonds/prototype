import QtQuick 2.9
import QtQuick.Layouts
import QtQuick.Controls

// test - jules @ 5:24pm

Item {
    id: right_panel
    height: 720
    width: 240

    Rectangle{        
        anchors.fill: parent
        color: "#ffffff"


        Rectangle{
            id: navigation_bar
            width: parent.width
            height: 50
            anchors.top: parent.top

            Row {
//              anchors.fill: parent
                anchors.centerIn: parent
                spacing: 10
                Button {
                    id: project
                    width: 70
                    text: qsTr("Project")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                    }
                    onClicked:{
                        projColumn.visible = true
                        histColumn.visible = false
                        msgColumn.visible = false
                        parent.color = "#C5DCFA"
                        text.color = "#0F56B3"
                        label1 = true
                    }
                }

                Button {
                    id: history
                    width: 70
                    text: qsTr("History")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                    }
                    onClicked:{
                        projColumn.visible = false
                        histColumn.visible = true
                        msgColumn.visible = false
                        parent.color = "#C5DCFA"
                        text.color = "#0F56B3"
                        label1 = true
                    }
                }

                Button {
                    id: messages
                    width: 70
                    text: qsTr("Messages")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 5
                        border.color: "#8b8989"
                        }
                    onClicked:{
                        projColumn.visible = false
                        histColumn.visible = false
                        msgColumn.visible = true
                        color = "#C5DCFA"
                        palette.buttonText = "#0F56B3"
                        label1 = true
                        }
                    }
                }
            }
        }
    Rectangle{
        id: projColumn
        anchors.top: navigation_bar.bottom
        visible: false
            Row {
                id: projLabel
                height: right_panel.height - 200
                width: right_panel.width
                //anchors.top: navigation_bar.bottom - 50
                anchors.left: right_panel.left
                leftPadding: 20
                topPadding: 75
                bottomPadding: 40
                Label {
                    id: projTitle
                    anchors.left: navigation_bar.left
                    //anchors.top: navigation_bar.bottom + 100
                    rightPadding: 50
                    //topPadding: 25
                    text: qsTr("Projects")
                    font.pointSize: 15
                    font.bold: true
                    color: black
                 }
                Button {
                    id: create_new_proj
                    width: 100
                    anchors.left: projTitle + 50
                    text: qsTr(" +  Create New")
                    font.pointSize: 10
                    background: Rectangle{
                        color: "silver"
                        radius: 10
                        border.color: "#8b8989"
                    }
                }
            }
            Row {
                id: recentLabel
                anchors.top: projLabel.bottom + 100
                leftPadding: 20
                topPadding: 50
                Label {
                    id: recentTitle
                    anchors.left: navigation_bar.left
                    //anchors.top: projLabel.bottom + 50
                    rightPadding: 50
                    topPadding: 100
                    text: qsTr("Recents")
                    font.pointSize: 15
                    font.bold: true
                    color: black
                }
            }

    }

        Rectangle{
            id: histColumn
            anchors.top: navigation_bar.bottom + 50
            visible: false
            Row{
                height: right_panel.height - 200
                width: right_panel.width
                //anchors.top: navigation_bar.bottom + 50
                anchors.left: right_panel.left
                topPadding: 75
                bottomPadding: 40
                leftPadding: 20
                    Label {
                        id: histTitle
                        anchors.left: navigation_bar.left
                        anchors.top: navigation_bar.bottom + 50
                        rightPadding: 50
                        text: qsTr("History Log")
                        font.pointSize: 15
                        font.bold: true
                        color: "#000000"
                     }
                }
            Row{
                id: details_line
                //height: right_panel.height - 200
                width: right_panel.width
                anchors.top: histTitle.bottom
                anchors.left: right_panel.left
                topPadding: 100
                //bottomPadding: 40
                leftPadding: 20
                //rightPadding: 50
                //make borders grey rather than multiple underscore lines
                    Label {
                        id: date_label
                        anchors.left: navigation_bar.left
                        //anchors.top: h.bottom + 50
                        rightPadding: 50
                        text: qsTr("Date and Time")
                        font.pointSize: 10
                        font.bold: false
                        color: "#000000"
                }
                    Label {
                        id: notes_label
                        anchors.left: date_label.right + 50
                        //anchors.top: histTitle.bottom + 50
                        rightPadding: 50
                        text: qsTr("Notes")
                        font.pointSize: 10
                        font.bold: false
                        color: "#000000"
                }

            }
            Rectangle{
                id: sim_hist
                width: right_panel.width
                anchors.top: details_line.bottom
                anchors.left: right_panel.left
                //bottomPadding: 40
                //leftPadding: 20
                Row{
                    id: sim_results
                    //height: right_panel.height - 200
                    width: right_panel.width
                    anchors.top: details_line.bottom
                    anchors.left: right_panel.left
                    bottomPadding: 40
                    leftPadding: 20

                    Label {
                        id: sim_histLabel
                        anchors.left: navigation_bar.left
                        //anchors.top: h.bottom + 50
                        rightPadding: 50
                        text: qsTr("Simulation History")
                        font.pointSize: 13
                        font.bold: true
                        color: "#000000"
                    }
                }
            }

            Row{
                id: data_hist
                width: right_panel.width
                anchors.top: sim_hist.bottom
                anchors.left: right_panel.left
                //topPadding:
                bottomPadding: 40
                leftPadding: 20
                    Label {
                        id: data_histLabel
                        anchors.left: navigation_bar.left
                        //anchors.top: h.bottom + 50
                        rightPadding: 50
                        topPadding: 50
                        text: qsTr("Data History")
                        font.pointSize: 13
                        font.bold: true
                        color: "#000000"
                }
            }
        }


        Rectangle{
            id: msgColumn
            anchors.top: navigation_bar.bottom
            visible: false
                Row {
                    id: msgLabel
                    anchors.top: navigation_bar.bottom+50
                    leftPadding: 20

                    topPadding: 75
                    //bottomPadding: 40
                    Label {
                        id: msgTitle
                        anchors.left: navigation_bar.left
                        anchors.top: navigation_bar.bottom + 50
                        rightPadding: 50
                        text: qsTr("Message Log")
                        font.pointSize: 15
                        font.bold: true
                        color: "#000000"
                     }
                }
            Rectangle{
                id: msgPhoto
                anchors.top: msgLabel.bottom
                anchors.topMargin: 20
                anchors.left: right_panel
                color: "red"
                width: right_panel.width
                height: 550
                Image {
                    source: "/materials/messages log page.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectCrop
                    visible: true
                }
            }
        }
    }




/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:4}D{i:6}D{i:8}D{i:3}D{i:2}D{i:10}D{i:11}D{i:1}
}
##^##*/
