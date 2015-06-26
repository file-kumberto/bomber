import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

FocusScope {
    property alias interval: timer.intervalTimer
    property alias timer: timer.timer
    property alias counter: timer.counter
    property alias button1: redWire
    property alias button2: greyWire
    property alias button3: blueWire
    property int wrapperWidth: 0
    property int wrapperHeight: 0

    Image {
        id: bombImage
        width: wrapperWidth
        height: wrapperHeight
        source: "/bomb2.jpg"
    }
    TimerBomb{
        id: timer
        wrapperWidth: bombImage.width
        wrapperHeight: bombImage.height
    }
    Rectangle{
        x: {wrapperWidth*0.403}
        y: {wrapperHeight*0.08}
        width: {wrapperWidth*0.315}
        height: {wrapperHeight*0.239}
        color: "#FFFFFD"
        RedWire{
            id: redWire
            width: {wrapperWidth*0.271}
            height: {wrapperHeight*0.19}
            anchors.bottom: parent.bottom
            x: {wrapperWidth*0.0046875}
        }
        GreyWire{
            id: greyWire
            width: {wrapperWidth*0.23}
            height: {wrapperHeight*0.16}
            anchors.bottom: parent.bottom
            x: {wrapperWidth*0.028125}
        }
        BlueWire{
            id: blueWire
            width: {wrapperWidth*0.15625}
            height: {wrapperHeight*0.1291666666666667}
            anchors.bottom: parent.bottom
            x: {wrapperWidth*0.065625}
        }
    }
}



