import QtQuick 2.4

Item{
    property alias leftMouse: leftMouse
    property alias topMouse: topMouse
    property alias rightMouse: rightMouse
    width: 180
    height: 97
    Rectangle {
        width: 7
        height: 97
        color: "#f30606"
        radius: 4
        border.width: 0
        MouseArea{
            id: leftMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 180
        height: 7
        color: "#f30606"
        radius: 4
        border.width: 0
        anchors.top: parent.top
        MouseArea{
            id: topMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: 7
        height: 97
        color: "#f30606"
        radius: 4
        border.width: 0
        anchors.right: parent.right
        MouseArea{
            id: rightMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

