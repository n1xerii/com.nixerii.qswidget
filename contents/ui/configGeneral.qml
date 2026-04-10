import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_useGoogle: useGoogle.checked
    property alias cfg_useDuckDuckGo: useDuckDuckGo.checked
    property alias cfg_customServiceLink: customServiceLink.text


    QQC2.CheckBox {
        id: useYoutube
        text: i18n("DuckDuckGo")
    }
    QQC2.CheckBox {
        id: useGoogle
        //Kirigami.FormData.label: i18n("Service:")
        text: i18n("Google")
    }
    QQC2.CheckBox {
        id: useYoutube
        text: i18n("Youtube")
    }
    QQC2.CheckBox {
        id: useWikipedia
        text: i18n("Wikipedia")
    }



    QQC2.TextField {
        id: customServiceLink
        Kirigami.FormData.label: i18n("Custom link:")
        placeholderText: i18n("www.something.com/query=")
    }
}
