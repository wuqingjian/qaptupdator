/***************************************************************************
 *   Copyright © 2021 Wang Rui <wangrui@jingos.com>                        *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or         *
 *   modify it under the terms of the GNU General Public License as        *
 *   published by the Free Software Foundation; either version 2 of        *
 *   the License or (at your option) version 3 or any later version        *
 *   accepted by the membership of KDE e.V. (or its successor approved     *
 *   by the membership of KDE e.V.), which shall act as a proxy            *
 *   defined in Section 14 of version 3 of the license.                    *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>. *
 ***************************************************************************/

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

import org.jingos.updator 1.0 as JUpdator

Window {
    id: root

    width: Screen.width
    height: Screen.height
    visible: true
    title: i18n("Updator")

    Button {
        id: pushBtn
        width: 320
        height: 80
        text: "Enter Update"
        anchors.centerIn: parent

        onClicked: {
            var component = Qt.createComponent("update.qml")
            var window    = component.createObject(root)
            window.show()
        }
    }
}
