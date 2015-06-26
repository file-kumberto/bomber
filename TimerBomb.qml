import QtQuick 2.4
import QtQuick.Dialogs 1.2
import "dynamicTimer.js" as MyScript

Rectangle {
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
                timer.stopTimer()
            }
        }
    }
    Timer{
        interval: MyScript.interval
        running: true
        repeat: true
        onTriggered: time.text = MyScript.func()
    }

    MessageDialog{
        id: endMessage
        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}

