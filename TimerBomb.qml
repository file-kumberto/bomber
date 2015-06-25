import QtQuick 2.4
import QtQuick.Dialogs 1.2

Rectangle {
    width: 130
    height: 50
    color: "black"
    border.width: 0
    x: 315
    y: 182
    Text{
        color: "#ea0b0b"
        text: timer.time
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
    MessageDialog{
        id: endMessage
        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}

