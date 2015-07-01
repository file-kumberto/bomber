import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

FocusScope {
    property alias interval: timer.intervalTimer
    property alias timer: timer.timer
    property alias counter: timer.counter
    property int windowWidth: 0
    property int windowHeight: 0

    Image {
        id: bombImage
        width: windowWidth
        height: windowHeight
        source: "/bomb2.jpg"
    }
    TimerBomb{
        id: timer
        wrapperWidth: bombImage.width
        wrapperHeight: bombImage.height
    }
    Rectangle{
        x: {windowWidth*0.403}
        y: {windowHeight*0.08}
        width: {windowWidth*0.315}
        height: {windowHeight*0.239}
        color: "#FFFFFD"
        Wire{
            id: redWire
            width: {windowWidth*0.271}
            height: {windowHeight*0.19}
            anchors.bottom: parent.bottom
            x: {windowWidth*0.0046875}
            colour: "red"
            message: message1
        }
        Wire{
            id: greyWire
            width: {windowWidth*0.23}
            height: {windowHeight*0.16}
            anchors.bottom: parent.bottom
            x: {windowWidth*0.028125}
            colour: "grey"
            message: message2
        }
        Wire{
            id: blueWire
            width: {windowWidth*0.15625}
            height: {windowHeight*0.1291666666666667}
            anchors.bottom: parent.bottom
            x: {windowWidth*0.065625}
            colour: "blue"
            message: message3
        }
    }
}



