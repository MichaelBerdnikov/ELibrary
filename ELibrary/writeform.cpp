#include "writeform.h"
#include "ui_writeform.h"

writeForm::writeForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::writeForm)
{
    ui->setupUi(this);
    setLayout(ui->outerLayout);
}

writeForm::~writeForm()
{
    delete ui;
}
