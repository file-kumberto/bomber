import QtQuick 2.4

FocusScope {
    property alias interval: timer.intervalTimer
    property alias timer: timer.timer
    property alias counter: timer.counter
    property int windowWidth: 0
    property int windowHeight: 0
    property string message1: "Detonation!"
    property string message2: "Defused!"
    property string message3: "accelerated time 2 times"


    function messageValue() {
        var array = [message1,message2,message3];
        for ( var i = 0; i < 3; ++i ) {
            var numberMessage = Math. round(Math.random()*2 + 1);
            var str = array[2];
            array[2] = array[i];
            array[i] = str;
        }
        console.debug( "array[0] " + array[0] + "\n");
        console.debug( "array[1] " + array[1] + "\n");
        console.debug( "array[2] " + array[2] + "\n");
        message1 = array[0];
        message2 = array[1];
        message3 = array[2];
    }

    Image {
        id: bombImage
        width: windowWidth
        height: windowHeight
        source: "/bomb2.jpg"
    }
    TimerBomb {
        id: timer
        wrapperWidth: bombImage.width
        wrapperHeight: bombImage.height
    }
    Rectangle {
        x: (windowWidth*0.403)
        y: (windowHeight*0.08)
        width: (windowWidth*0.315)
        height: (windowHeight*0.239)
        color: "#FFFFFD"
        Wire {
            id: redWire
            x: (windowWidth*0.0046875)
            width: (windowWidth*0.271)
            height: (windowHeight*0.19)
            anchors.bottom: parent.bottom
            colour: "#ff0000"
            message: message1
        }
        Wire {
            id: greyWire
            x: (windowWidth*0.028125)
            width: (windowWidth*0.23)
            height: (windowHeight*0.16)
            anchors.bottom: parent.bottom
            colour: "#00ff00"
            message: message2
        }
        Wire {
            id: blueWire
            x: (windowWidth*0.065625)
            width: (windowWidth*0.15625)
            height: (windowHeight*0.1291666666666667)
            anchors.bottom: parent.bottom
            colour: "#0000ff"
            message: message3
        }
    }
}



