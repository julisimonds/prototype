import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: inner_left
    property bool isCollapsed: false
    signal rescale
    height: 720
    width: 160
    x: 160
    y: 0
    Rectangle{
        id: container
        height: parent.height
        width: parent.width

        anchors.right: parent.right
        color: "#ededed"
        visible: true

        //-------------------
        ListModel{
            id: featuresList
            ListElement{name: "     Flexible Leg"; page: ""}
            ListElement{name: "     Parametric Oleo Model"; page: ""}
            ListElement{name: "     Asymmetrical Aircraft"; page: ""}
            ListElement{name: "     Flexible Disable"; page: ""}
            ListElement{name: "     Wheel 1"; page: ""}
            ListElement{name: "     Wheel 2"; page: ""}
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
                color: "#ededed"
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
                            parent.color = "#ededed"
                            text.color = "#000000"
                            flag = false
                        }
                    }
                }
            }
        }

        //-------------------

        Rectangle{
            id: collapse_button
            x: 143
            y: 667
            z: 2
            height: 35
            width: 35
            color: "#cacaca"
            border.color: "#acacac"
            radius: 6

            Image {
                id: collapse_image
                anchors.centerIn: parent
                width: parent.width
                height: parent.height
                source: "/materials/collapse button.png"
                fillMode: Image.PreserveAspectFit
                visible: true
            }

            MouseArea{
                id: collapse_click
                anchors.centerIn: parent
                anchors.fill: parent
            }
        }

        PropertyAnimation{
            id: collapse
            target: inner_left
            property: "x"
            to: 0
            duration: 700
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation{
            id: expand
            target: inner_left
            property: "x"
            to: 160
            duration: 1000
            easing.type: Easing.InOutQuad
        }

        RotationAnimator{
            id: rotate_collapse
            target: collapse_button
            from: 0
            to: 180
            duration: 350
            easing.type: Easing.InQuad
            direction: RotationAnimator.Counterclockwise
            running: false
        }

        RotationAnimator{
            id: rotate_expand
            target: collapse_button
            from: 180
            to: 0
            duration: 350
            easing.type: Easing.InQuad
            direction: RotationAnimator.Clockwise
            running: false
        }

        Connections{
            target:collapse_click
            function onClicked(){
                if(!isCollapsed){
                    collapse.start()
                    isCollapsed = true
                    rotate_collapse.running = true

                }

                else{
                    expand.start()
                    isCollapsed = false
                    rotate_expand.running = true
                }
            }
        }

    }
}


