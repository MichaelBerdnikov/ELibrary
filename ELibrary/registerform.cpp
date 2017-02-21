#include "registerform.h"
#include "ui_registerform.h"

registerForm::registerForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::registerForm)
{
    ui->setupUi(this);
    setLayout(ui->outerLayout);
}

registerForm::~registerForm()
{
    delete ui;
}
