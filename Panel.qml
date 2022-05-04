import QtQuick 2.0
import QtQuick.Controls
Item {
    Rectangle{
        anchors.fill: parent
        color:"#808080" //"gray"
    }

    Loader{
        id: mainLoader
        anchors.fill: parent
        //source: "StackViewPage.qml"
    }

    Button{
        id: nextButton
        width: 85
        height: 35
        anchors{
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
        onClicked: stackview.push("Panel2.qml")
    }

    Button{
        id: prevButton
        width: 85
        height: 35
        anchors{
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }
        text: "Back"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:640}D{i:1}D{i:2}D{i:3}D{i:4}
}
##^##*/
