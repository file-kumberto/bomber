import QtQuick 2.4

Item{
    Rectangle {
        width: 5
        height: 62
        color: "#0453fb"
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 100
        height: 5
        color: "#0453fb"
        anchors.top: parent.top
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 5
        height: 62
        color: "#0453fb"
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

