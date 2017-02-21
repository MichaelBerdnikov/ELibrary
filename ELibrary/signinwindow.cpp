#include "signinwindow.h"
#include "ui_signinwindow.h"

signinwindow::signinwindow(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::signinwindow)
{
    ui->setupUi(this);
    setLayout(ui->outerLayout);
}

signinwindow::~signinwindow()
{
    delete ui;
}
