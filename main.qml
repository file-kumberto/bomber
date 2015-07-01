import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: window
    property string message1: ""
    property string message2: ""
    property string message3: ""

    title: qsTr("Hello World")
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    function messageValue() {
        var array =[0,0,0,];
        var str = ["Detonation!","Defused!","accelerated time 2 times"];
        for( var i = 0; i < 3; ) {
           var numberMessage = Math. round(Math.random()*2 + 1);

            if( array[0] === 0 ) {
                array[0] = numberMessage;
                console.debug("array[0] " + array[0]);
                i += 1;
            } else if( array[0] !== numberMessage && array[1] === 0) {
                array[1] = numberMessage;
                console.debug("array[1] " + array[1]);
                i += 1;
            } else if (array[0] !== numberMessage && array[1] !== numberMessage) {
                array[2] = numberMessage;
                console.debug("array[2] " + array[2]);
                i += 1;
            }
        }
        message1 = str[array[0] - 1];
        message2 = str[array[1] - 1];
        message3 = str[array[2] - 1];
    }
    Component.onCompleted: {
        messageValue();
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&New")
                onTriggered: {
                    bomb.interval = 1000;
                    bomb.counter = 60;
                    messageValue();
                    bomb.timer.start();
                }
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    Bomb {
        id: bomb
        anchors.fill: parent
        windowWidth: window.width
        windowHeight: window.height
    }
}
