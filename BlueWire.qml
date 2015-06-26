import QtQuick 2.4

Item{
    property alias leftMouse: leftMouse
    property alias topMouse: topMouse
    property alias rightMouse: rightMouse
    Rectangle {
        width: {wrapperWidth*0.0078125}
        height: {wrapperHeight*0.12917}
        color: "#0453fb"
        MouseArea{
            id: leftMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: {wrapperWidth*0.15625}
        height: {wrapperWidth*0.0078125}
        color: "#0453fb"
        anchors.top: parent.top
        MouseArea{
            id: topMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: {wrapperWidth*0.0078125}
        height: {wrapperHeight*0.12917}
        color: "#0453fb"
        anchors.right: parent.right
        MouseArea{
            id: rightMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

