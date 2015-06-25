import QtQuick 2.4

Item{
    Rectangle {
        width: 5
        height: 77
        color: "#b7b0b0"
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 148
        height: 5
        color: "#b7b0b0"
        anchors.top: parent.top
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 5
        height: 77
        color: "#b7b0b0"
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

