import QtQuick 2.4
import QtQuick.Controls 1.3

FocusScope {
    width: 640
    height: 480
    visible: true
//    property alias button1: blackWire
//    property alias button2: redWire
//    property alias button3: blueWire

    Image {
        id: bomb
        x: 1
        y: 0
        width: 639
        height: 425
        source: "file:///d:/Cplus/Qt/sapper/bomb2.jpg"
    }
    TimerBomb{
        id: rectTimer
    }
    Rectangle{
        x: 259
        y: 40
        width: 199
        height: 97
        RedWire{

            width: 180
            height: 97
            x: 3
        }
        GreyWire{

            width: 148
            height: 77
            anchors.bottom: parent.bottom
            x: 18
        }
        BlueWire{
            width: 100
            height: 62
            anchors.bottom: parent.bottom
            x: 42
        }
    }
}



