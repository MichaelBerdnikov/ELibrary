#include "readform.h"
#include "ui_readform.h"

readform::readform(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::readform)
{
    ui->setupUi(this);
    setLayout(ui->outerLayout);
}

readform::~readform()
{
    delete ui;
}
