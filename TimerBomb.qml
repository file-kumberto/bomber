import QtQuick 2.4
import QtQuick.Dialogs 1.2
import "dynamicTimer.js" as MyScript

Rectangle {
    property int intervalTimer: 1000
    property int counter: 60
    property alias timer: timer
    width: 130
    height: 50
    color: "black"
    border.width: 0
    x: 315
    y: 182
    Text{
        id: time
        color: "#ea0b0b"
        font.family: "Arial Black"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 44
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.verticalCenter: parent.verticalCenter
        onTextChanged: {
            if(text == '0') {
                endMessage.show("BANG!!!!!!!!")
                timer.stop()
            }
        }
    }
    Timer{
        id: timer
        interval: intervalTimer
        running: true
        repeat: true
        onTriggered:{
            time.text = func();
            function func(){
                counter -= 1;
                return counter;
            }
        }
    }

    MessageDialog{
        id: endMessage
        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}

