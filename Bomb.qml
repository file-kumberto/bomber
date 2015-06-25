import QtQuick 2.4
import QtQuick.Controls 1.3

FocusScope {
    width: 640
    height: 480
    visible: true
    property alias button1: blackWire
    property alias button2: redWire
    property alias button3: blueWire

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
        Image{

            width: 170
            height: 97
            x: 3
            source: "file:///d:/Cplus/Qt/sapper/black-wire.png"

            MouseArea{
                id: blackWire
                anchors.fill: parent
                cursorShape: Qt.OpenHandCursor
            }
        }
        Image{

            width: 150
            height: 77
            anchors.bottom: parent.bottom
            x: 13
            source: "file:///d:/Cplus/Qt/sapper/red-wire.png"
            MouseArea{
                id: redWire
                anchors.fill: parent
                cursorShape: Qt.OpenHandCursor
            }
        }
        Image{
            width: 110
            height: 47
            anchors.bottom: parent.bottom
            x: 32
            source: "file:///d:/Cplus/Qt/sapper/blue-wire.png"
            MouseArea{
                id: blueWire
                anchors.fill: parent
                cursorShape: Qt.OpenHandCursor
            }
        }
    }
}



