import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import "dynamicTimer.js" as MyScript

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&New")
                onTriggered: MyScript.resetTimer();
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    Bomb {
        anchors.fill: parent
//        button1.onClicked: {
//            messageDialog.show(qsTr("Defused"))
//            timer.stopTimer()
//        }
//        button2.onClicked: {
//            messageDialog.show(qsTr("Detonation!!"))
//            timer.stopTimer()
//        }
//        button3.onClicked: {
//            messageDialog.show(qsTr("accelerated time 2 times"))
//            timer.doubleSpeed()
//        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
