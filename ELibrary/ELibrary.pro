#-------------------------------------------------
#
# Project created by QtCreator 2017-02-09T22:05:21
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ELibrary
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    signinwindow.cpp \
    readform.cpp \
    writeform.cpp \
    searchingform.cpp \
    registerform.cpp

HEADERS  += mainwindow.h \
    signinwindow.h \
    readform.h \
    writeform.h \
    searchingform.h \
    registerform.h

FORMS    += \
    signinwindow.ui \
    readform.ui \
    writeform.ui \
    searchingform.ui \
    registerform.ui
