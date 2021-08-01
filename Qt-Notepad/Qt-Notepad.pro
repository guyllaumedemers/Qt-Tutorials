QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QT += printsupport

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    notepad.cpp

HEADERS += \
    notepad.h

FORMS += \
    notepad.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Build/Qt-Notepad_Build/D3Dcompiler_47.dll \
    Build/Qt-Notepad_Build/Qt-Notepad.exe \
    Build/Qt-Notepad_Build/Qt6Core.dll \
    Build/Qt-Notepad_Build/Qt6Gui.dll \
    Build/Qt-Notepad_Build/Qt6PrintSupport.dll \
    Build/Qt-Notepad_Build/Qt6Svg.dll \
    Build/Qt-Notepad_Build/Qt6Widgets.dll \
    Build/Qt-Notepad_Build/iconengines/qsvgicon.dll \
    Build/Qt-Notepad_Build/imageformats/qgif.dll \
    Build/Qt-Notepad_Build/imageformats/qico.dll \
    Build/Qt-Notepad_Build/imageformats/qjpeg.dll \
    Build/Qt-Notepad_Build/imageformats/qsvg.dll \
    Build/Qt-Notepad_Build/opengl32sw.dll \
    Build/Qt-Notepad_Build/platforms/qwindows.dll \
    Build/Qt-Notepad_Build/styles/qwindowsvistastyle.dll \
    Build/Qt-Notepad_Build/translations/qt_ar.qm \
    Build/Qt-Notepad_Build/translations/qt_bg.qm \
    Build/Qt-Notepad_Build/translations/qt_ca.qm \
    Build/Qt-Notepad_Build/translations/qt_cs.qm \
    Build/Qt-Notepad_Build/translations/qt_da.qm \
    Build/Qt-Notepad_Build/translations/qt_de.qm \
    Build/Qt-Notepad_Build/translations/qt_en.qm \
    Build/Qt-Notepad_Build/translations/qt_es.qm \
    Build/Qt-Notepad_Build/translations/qt_fa.qm \
    Build/Qt-Notepad_Build/translations/qt_fi.qm \
    Build/Qt-Notepad_Build/translations/qt_fr.qm \
    Build/Qt-Notepad_Build/translations/qt_gd.qm \
    Build/Qt-Notepad_Build/translations/qt_he.qm \
    Build/Qt-Notepad_Build/translations/qt_hr.qm \
    Build/Qt-Notepad_Build/translations/qt_hu.qm \
    Build/Qt-Notepad_Build/translations/qt_it.qm \
    Build/Qt-Notepad_Build/translations/qt_ja.qm \
    Build/Qt-Notepad_Build/translations/qt_ko.qm \
    Build/Qt-Notepad_Build/translations/qt_lv.qm \
    Build/Qt-Notepad_Build/translations/qt_nl.qm \
    Build/Qt-Notepad_Build/translations/qt_nn.qm \
    Build/Qt-Notepad_Build/translations/qt_pl.qm \
    Build/Qt-Notepad_Build/translations/qt_pt_BR.qm \
    Build/Qt-Notepad_Build/translations/qt_ru.qm \
    Build/Qt-Notepad_Build/translations/qt_sk.qm \
    Build/Qt-Notepad_Build/translations/qt_tr.qm \
    Build/Qt-Notepad_Build/translations/qt_uk.qm \
    Build/Qt-Notepad_Build/translations/qt_zh_CN.qm \
    Build/Qt-Notepad_Build/translations/qt_zh_TW.qm
