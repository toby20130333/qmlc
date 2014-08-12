QT += qml quick

QMLCBASEPATH = ../../

INCLUDEPATH += $$QMLCBASEPATH/qmcloader
LIBS += -L$$QMLCBASEPATH/qmcloader
LIBS += -lqmcloader

# These are just for using JIT
QT += qml-private core-private
INCLUDEPATH += $$QMLCBASEPATH/3rdparty/masm
INCLUDEPATH += $$QMLCBASEPATH/3rdparty/masm/stubs
INCLUDEPATH += $$QMLCBASEPATH/3rdparty/masm/stubs/wtf
INCLUDEPATH += $$QMLCBASEPATH/3rdparty/masm/jit
INCLUDEPATH += $$QMLCBASEPATH/3rdparty/masm/disassembler
include($$QMLCBASEPATH/3rdparty/masm/masm-defs.pri)
DEFINES += ENABLE_JIT ASSERT_DISABLED=1

SOURCES += main.cpp \
           cppsubitem.cpp

HEADERS += cppsubitem.h

OTHER_FILES += \
    multipleitems.qmc \
    QmlSubItem.qmc

RESOURCES += res.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/quick/qmlsubitem
INSTALLS += target
