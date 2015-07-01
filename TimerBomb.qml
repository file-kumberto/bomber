import QtQuick 2.4
import QtQuick.Dialogs 1.2

Rectangle {
    property int intervalTimer: 1000
    property int counter: 60
    property alias timer: timer
    property int wrapperWidth: 0
    property int wrapperHeight: 0

    width: {wrapperWidth*0.203125}
    height: {wrapperHeight * 0.10833333333333}
    color: "black"
    border.width: 0
    x: {wrapperWidth*0.4921875}
    y: {wrapperHeight * 0.43}
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
        text: counter
    }
    Timer{
        id: timer
        interval: intervalTimer
        running: true
        repeat: true
        onTriggered:{
            --counter;
            if(counter === 0) {
                endMessage.open()
                stop();
            }
        }
    }

    MessageDialog{
        id: endMessage
        text: "BANG!!!!!!!!"
    }
}

