import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    height: 720
    width: 160
    Rectangle{
        id: outer_left
        height: parent.height
        width: parent.width
        anchors.left: parent.left
        color: "#ffffff"
        visible: true
        z: 0

        ListModel{
            id: featuresList
            ListElement{name: "     Scenario"; page: ""}
            ListElement{name: "     Asymmetric Aircraft"; page: ""}
            ListElement{name: "     Scenario Parameters"; page: ""}
            ListElement{name: "     Landing Gear"; page: ""}
            ListElement{name: "     Simulate"; page: ""}
        }

        GridView{
            id: featuresGrid
            width:parent.width
            height: parent.height
            x: parent.x
            y: parent.y
            cellHeight: 80
            cellWidth: 160
            model: featuresList
            delegate: Rectangle {
                height: 80
                width: 160
                color: "#ffffff"
                radius: 0
                Text{
                    id: text
                    color: "#000000"//"black"
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    //anchors.horizontalCenter: parent.horizontalCenter
                    anchors.left: parent.left
                }

                property bool flag: false
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(!flag){
                            //mainLoader.source = page
                            parent.color = "#C5DCFA"
                            text.color = "#0F56B3"
                            flag = true
                        }

                        else if(flag){
                            parent.color = "#ffffff"
                            text.color = "#000000"
                            flag = false
                        }
                    }
                }
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:2}D{i:8}D{i:1}D{i:15}D{i:14}D{i:16}D{i:13}D{i:12}
}
##^##*/
