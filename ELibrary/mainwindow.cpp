#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "readform.h"
#include "registerform.h"
#include "searchingform.h"
#include "signinwindow.h"
#include "writeform.h"


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    setCentralWidget(new signinwindow(this));
}

MainWindow::~MainWindow()
{
    delete ui;
}
