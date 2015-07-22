import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: window
    title: qsTr("Sapper")
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    minimumWidth: 640
    minimumHeight: 480
    visible: true

    Component.onCompleted: {
        bomb.messageValue();
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&New")
                onTriggered: {
                    bomb.interval = 1000;
                    bomb.counter = 60;
                    bomb.messageValue();
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
