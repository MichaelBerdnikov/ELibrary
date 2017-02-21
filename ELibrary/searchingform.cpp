#include "searchingform.h"
#include "ui_searchingform.h"

searchingForm::searchingForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::searchingForm)
{
    ui->setupUi(this);
    setLayout(ui->outerLayout);
}

searchingForm::~searchingForm()
{
    delete ui;
}
