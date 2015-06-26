import QtQuick 2.4

Rectangle{
    property alias leftMouse: leftMouse
    property alias topMouse: topMouse
    property alias rightMouse: rightMouse
    Rectangle {
        width: {wrapperWidth*0.0078125}
        height: {wrapperHeight*0.19}
        color: "#f30606"
        MouseArea{
            id: leftMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: {wrapperWidth*0.271}
        height: {wrapperWidth*0.0078125}
        color: "#f30606"
        anchors.top: parent.top
        MouseArea{
            id: topMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
    Rectangle {
        width: {wrapperWidth*0.0078125}
        height: {wrapperHeight*0.19}
        color: "#f30606"
        anchors.right: parent.right
        MouseArea{
            id: rightMouse
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
        }
    }
}

