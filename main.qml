import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.15
Window {
    height: 720
    width: 1280
    maximumHeight: 720
    maximumWidth: 1280
    minimumHeight: 720
    minimumWidth: 1280
    visible: true
    title: qsTr("Gearsim")

    LeftPanel{
        id: left_panel
        height: parent.height
        width: parent.width/8
        anchors.left: parent.left
        z: 3
    }


    InnerLeftPanel{
        id: inner_left
        height: parent.height
        width: parent.width/8
        //anchors.left: left_panel.right
        z: 2
    }
// hello hello
//


    MidPanel{
        id: mid_panel
        height: parent.height
        width: parent.width/4 * 2.25
        anchors.left: inner_left.right
        anchors.right: right_panel.left
        z: 1
    }

// hello!

    RightPanel{
        id: right_panel
        height: parent.height
        width: parent.width/4 * 0.75
        anchors.right: parent.right
        z: 0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}D{i:1}D{i:3}D{i:4}D{i:5}D{i:2}D{i:6}D{i:7}
}
##^##*/
