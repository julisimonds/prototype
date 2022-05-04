import QtQuick 2.9
import QtQuick.Layouts
import QtQuick.Controls

Item {
    Rectangle{
        anchors.fill: parent
        color: "black"


        Rectangle{
            id: navigation_bar
            height: 30
            width: parent.width
            anchors.top: parent.top
            anchors.bottom: upper_mid.top
            color: "white"

            Label{
                text: "      Parametric Oleo Model"
                anchors.left: parent.left
                font.bold: false
                font.pointSize: 12
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle{
                width: 180
                height: parent.height
                anchors.right: parent.right
                color: "black"
                RowLayout{
                    anchors.fill: parent
                    spacing: 0

                    Rectangle{
                        height: parent.height
                        width: 60
                        color: "white"

                        Label{
                            id: data_entry
                            text: "Data Entry"
                            font.bold: false
                            font.pointSize: 9
                            anchors.centerIn: parent

                        }

                        MouseArea{
                            anchors.fill: parent
                            onClicked:{
                                data_entry.color = "#0F56B3"
                                proj_info.color = "black"
                                help.color = "black"
                                data_entry.font.bold = true
                                proj_info.font.bold = false
                                help.font.bold = false
                                image.visible = true
                                upper_mid.visible = true
                                lower_mid.visible = true
                                fullMid.visible = false
                            }
                        }
                    }

                    Rectangle{
                        height: parent.height
                        width: 60
                        color: "white"

                        Label{
                            id: proj_info
                            text: "Project Info"
                            font.bold: false
                            font.pointSize: 9
                            anchors.centerIn: parent
                        }


                        MouseArea{
                            anchors.fill: parent
                            onClicked:{
                                data_entry.color = "black"
                                help.color = "black"
                                proj_info.color = "#0F56B3"
                                data_entry.font.bold = false
                                proj_info.font.bold = true
                                help.font.bold = false
                                image.visible = false
                                projInfoImage.visible = true
                                upper_mid.visible = false
                                lower_mid.visible = false
                                fullMid.visible = true
                                projInfoImage.visible = true
                                helpImage.visible = false
                            }
                        }
                    }

                    Rectangle{
                        height: parent.height
                        width: 60
                        color: "white"

                        Label{
                            id: help
                            text: "Help        "
                            font.bold: false
                            font.pointSize: 9
                            anchors.centerIn: parent
                        }

                        MouseArea{
                            anchors.fill: parent
                            onClicked:{
                                data_entry.color = "black"
                                proj_info.color = "black"
                                help.color = "#0F56B3"
                                data_entry.font.bold = false
                                proj_info.font.bold = false
                                help.font.bold = true
                                image.visible = false
                                helpImage.visible = true
                                upper_mid.visible = false
                                lower_mid.visible = false
                                fullMid.visible = true
                                projInfoImage.visible = false
                                helpImage.visible = true
                            }
                        }
                    }
                }
            }



        }

        Rectangle{
            id: upper_mid
            height: parent.height * 0.6
            width: parent.width
            anchors.top: navigation_bar.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            Image {
                id: image
                source: "/materials/airplaneModel.png"
                //anchors.top: navigation_bar.bottom
                //anchors.bottom: lower_mid.top
                anchors.left: parent.left
                anchors.right: parent.right
                visible: true
                //fillMode: Image.PreserveAspectFit
            }

        }

        Rectangle{
            id: lower_mid
            height: parent.height * 0.4
            width: parent.width
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "#000000"
            visible: true

            Rectangle{
                id: img
                height: parent.height - 80
                width: parent.width
                anchors.top: parent.top
                Image {
                    id: image1
                    x: 193
                    y: 51
                    width: 100
                    height: 100
                    source: "/materials/picture.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle{
                id: bottom_navigate
                height: 80
                width: parent.width
                anchors.bottom: parent.bottom
                //color: "black"
                RowLayout{

                    anchors.centerIn: parent
                    spacing: 100

                    Button {
                        id: back
                        height: 100
                        text: qsTr("    < Back    ")
                        font.bold: false
                        width: 100
                        highlighted: false
                        flat: false
                        font.pointSize: 12
                    }

                    Button {
                        id: save
                        height: 50
                        width: 100
                        text: qsTr("      Save      ")
                        font.bold: false
                        font.pointSize: 12
                    }

                    Button {
                        id: next
                        height: 50
                        width: 100
                        text: qsTr("     Next >    ")
                        font.bold: false
                        font.pointSize: 12
                    }
                }
            }


        }

        Rectangle{
            id: fullMid
            anchors.top: navigation_bar.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color:"red"
            Image {
                id: projInfoImage
                source: "/materials/proj_info.png"
                anchors.fill: parent
                visible: false
                //fillMode: Image.PreserveAspectFit
            }

            Image {
                id: helpImage
                source: "/materials/help.png"
                anchors.fill: parent
                visible: false
                //fillMode: Image.PreserveAspectFit
            }
            visible: false
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.5;height:480;width:640}D{i:4}D{i:8}D{i:9}D{i:7}
D{i:11}D{i:12}D{i:10}D{i:14}D{i:15}D{i:13}D{i:6}D{i:5}D{i:3}D{i:16}D{i:2}D{i:19}D{i:18}
D{i:22}D{i:23}D{i:24}D{i:21}D{i:20}D{i:17}D{i:1}
}
##^##*/
