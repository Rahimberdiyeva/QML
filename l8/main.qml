import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Traffic Light")

    SwipeView {
        id: view
        currentIndex: pageIndicator.currentIndex
        orientation: Qt.Vertical
        anchors.fill: parent
        padding: 100
        My_Page {
            id: firstPage
            comText: "Red Light"
            comColor: "red"
        }
        My_Page {
            id: secondPage
            comText: "Yellow Light"
            comColor: "yellow"
        }
        My_Page {
            id: thirdPage
            comText: "Green Light"
            comColor: "green"
        }
    }
    PageIndicator {
        id: pageIndicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
