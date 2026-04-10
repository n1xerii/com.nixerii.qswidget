import QtQml 2.15
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore

Item {
    id: full

    PlasmaComponents.TextField {
        id: searchField
        //anchors.fill: parent
        width: parent.width
        height: parent.height

        placeholderText: "Search 🔍"

        onAccepted: {
            aio_search("DuckDuckGo", text)

            text = ""
            widget.expanded = false
        }
    }

    function aio_search(service, query){
        var serviceLink = ""
        var serviceQuery = query

        switch(service) {
            case "DuckDuckGo":
                serviceLink = "https://duckduckgo.com/?q="
                break
            case "Google":
                serviceLink = "https://www.google.com/search?q="
                break
            case "Youtube":
                serviceLink = "https://www.youtube.com/results?search_query="
                break
            case "Wikipedia":
                serviceLink = "https://en.wikipedia.org/wiki/"
                break
            default:
                serviceLink = "https://duckduckgo.com/?q="
                break
        }

        Qt.openUrlExternally(
            serviceLink + encodeURIComponent(serviceQuery)
        )
    }
}
