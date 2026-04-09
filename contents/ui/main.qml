import QtQml 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    id: root

    Plasmoid.icon: 'starred-symbolic'
    hideOnWindowDeactivate: true

    function togglePopup() {
        switch(searchPopup.visible) {
            case true:
                searchPopup.close()
                break
            case false:
                searchPopup.open()
                break
            default:
                searchPopup.close()
                break
        }
    }

    fullRepresentation: { }

    PlasmaComponents.Button {
        id: showButton
        text: "🔍"
        font.bold: true
        font.pixelSize: 20
        x: 0
        y: 0
        width: parent.width
        height: parent.height

        onClicked: root.togglePopup()
    }

    PlasmaComponents.Popup {
        id: searchPopup
        width: 170
        height: 75
        x: showButton.x + (showButton.width - width) / 2
        y: showButton.y - height - 5

        PlasmaComponents.TextField {
            id: searchField
            width: parent.width
            height: parent.height

            placeholderText: qsTr("Search Youtube...")

            onAccepted: {
                Qt.openUrlExternally(
                    "https://www.youtube.com/results?search_query=" + encodeURIComponent(text)
                )
                searchField.clear()
                searchPopup.close()
            }
        }
    }
}
