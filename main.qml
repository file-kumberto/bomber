import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import "generatorMessage.js" as Generator

ApplicationWindow {
    id: wrapper
    title: qsTr("Hello World")
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    property int message1: 0
    property int message2: 0
    property int message3: 0

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&New")
                onTriggered: {
                    bomb.interval = 1000;
                    bomb.counter = 60;
                    Generator.messageValue();
                    bomb.timer.start();
                }
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }
    Component.onCompleted: {
        Generator.messageValue();
    }

    Bomb {
        id: bomb
        anchors.fill: parent
        wrapperWidth: wrapper.width
        wrapperHeight: wrapper.height
        button1.leftMouse.onClicked:  {
            messageDialog.show(message1)
        }
        button1.topMouse.onClicked:  {
            messageDialog.show(message1)
        }
        button1.rightMouse.onClicked:  {
            messageDialog.show(message1)
        }
        button2.leftMouse.onClicked:  {
            messageDialog.show(message2)
        }
        button2.topMouse.onClicked:  {
            messageDialog.show(message2)
        }
        button2.rightMouse.onClicked:  {
            messageDialog.show(message2)
        }
        button3.leftMouse.onClicked:  {
            messageDialog.show(message3)
        }
        button3.topMouse.onClicked:  {
            messageDialog.show(message3)
        }
        button3.rightMouse.onClicked:  {
            messageDialog.show(message3)
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            if( caption === 1 ) {
                messageDialog.text = "Detonation!";
                bomb.timer.stop();
            } else if( caption === 2 ) {
                messageDialog.text = "Defused!";
                bomb.timer.stop();
            } else if( caption === 3 ) {
                messageDialog.text = "accelerated time 2 times";
                bomb.interval = 500;
            }
            messageDialog.open();
        }
    }
}
