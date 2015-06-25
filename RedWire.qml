import QtQuick 2.4

Item{
    Rectangle {
        width: 5
        height: 97
        color: "#f30606"
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 180
        height: 5
        color: "#f30606"
        anchors.top: parent.top
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 5
        height: 97
        color: "#f30606"
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

