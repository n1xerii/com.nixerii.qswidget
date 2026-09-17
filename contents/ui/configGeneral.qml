import QtQuick.Layouts
import QtQuick.Controls as QQC
import org.kde.kirigami as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_useDuckDuckGo: useDuckDuckGo.checked
    property alias cfg_useGoogle: useGoogle.checked
    property alias cfg_useYoutube: useYoutube.checked
    property alias cfg_useWikipedia: useWikipedia.checked

    property alias cfg_useCustomService: useCustomService.checked
    property alias cfg_customServiceLink: customServiceLink.text

    property alias cfg_buttonSymbol: buttonSymbol.text
    property alias cfg_popupMode: popupMode.checked

    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("Service")
    }

    ColumnLayout {
        id: serviceColumn

        QQC.RadioButton {
            id: useDuckDuckGo
            text: qsTr("DuckDuckGo")
        }
        QQC.RadioButton {
            id: useGoogle
            text: qsTr("Google")
        }
        QQC.RadioButton {
            id: useYoutube
            text: qsTr("Youtube")
        }
        QQC.RadioButton {
            id: useWikipedia
            text: qsTr("Wikipedia")
        }

        QQC.RadioButton {
            id: useCustomService
            text: qsTr("Custom")
        }
        QQC.TextField {
            id: customServiceLink
            placeholderText: i18n("www.something.com/query=")
        }
    }

    Kirigami.Separator {
        Kirigami.FormData.isSection: true
        Kirigami.FormData.label: i18n("Appearance")
    }

    QQC.TextField {
        id: buttonSymbol
        placeholderText: i18n("H")
    }
}
