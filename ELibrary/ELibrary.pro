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
    loginwindow.cpp

HEADERS  += mainwindow.h \
    loginwindow.h

FORMS    += mainwindow.ui \
    regwindow.ui \
    searchform.ui \
    readingform.ui \
    writingform.ui
