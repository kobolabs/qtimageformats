# jpeg dependency satisfied by bundled 3rd party zlib or system jpeg
contains(QT_CONFIG, system-jpeg) {
    if(unix|win32-g++*): LIBS_PRIVATE += -ljpeg
    else:                LIBS += jpeg.lib
} else {
    load(qt_build_paths)
    include($$PWD/../../../qtbase/src/3rdparty/libjpeg.pri)
}
