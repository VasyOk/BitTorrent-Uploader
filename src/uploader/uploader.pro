_RC_FILE = 1
_MEDIA_INFO = 0
_CREATE_TORRENT = 0
include(../common/common.pri)
TEMPLATE = app
INCLUDEPATH += .
SOURCES += main.cpp \
    dialogs/welcomedialog.cpp \
    dialogs/settingsdialog.cpp \
    widgets/imagewidget.cpp \
    widgets/bbcodewidget.cpp \
    dialogs/mainwindow.cpp \
    dialogs/previewdialog.cpp \
    trackers/trackertbdevyuna.cpp

HEADERS += version.h \
    dialogs/welcomedialog.h \
    dialogs/settingsdialog.h \
    widgets/imagewidget.h \
    widgets/bbcodewidget.h \
    dialogs/mainwindow.h \
    dialogs/previewdialog.h \
    trackers/trackertbdevyuna.h \
    trackers/trackerrequest.h \
    ../common/interfaces.h

FORMS += dialogs/welcomedialog.ui \
    dialogs/settingsdialog.ui \
    dialogs/mainwindow.ui


contains(_CREATE_TORRENT, 1 ) {
    SOURCES += dialogs/createtorrent.cpp
    HEADERS += dialogs/createtorrent.h
    FORMS += dialogs/createTorrentDialog.ui
}
