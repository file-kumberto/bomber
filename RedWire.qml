import QtQuick 2.4

Item{
    property alias leftMouse: leftMouse
    property alias topMouse: topMouse
    property alias rightMouse: rightMouse
    width: 180
    height: 97

    Rectangle {
        width: 5
        height: 97
        color: "#f30606"
        MouseArea{
            id: leftMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        id: topMouse
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
            id: rightMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

