import QtQuick 2.4
import QtQuick.Dialogs 1.2

Item{
    property string colour: ""
    property string message: ""
    signal onClick()
    onOnClick: {
        if (message === "accelerated time 2 times") {
            interval = interval/2
        } else {
            timer.timer.stop()
        }
        dialog.open();
    }

    Component.onCompleted: {
        leftMouse.clicked.connect(onClick)
        topMouse.clicked.connect(onClick)
        rightMouse.clicked.connect(onClick)
    }

    Rectangle {
        width: {windowWidth*0.0078125}
        height: parent.height
        color: colour
        MouseArea{
            id: leftMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: parent.width
        height: {windowWidth*0.0078125}
        color: colour
        anchors.top: parent.top
        MouseArea{
            id: topMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: {windowWidth*0.0078125}
        height: parent.height
        color: colour
        anchors.right: parent.right
        MouseArea{
            id: rightMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    MessageDialog{
        id: dialog
        width: 50
        text: message
    }
}

