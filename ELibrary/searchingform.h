#ifndef SEARCHINGFORM_H
#define SEARCHINGFORM_H

#include <QWidget>

namespace Ui {
class searchingForm;
}

class searchingForm : public QWidget
{
    Q_OBJECT

public:
    explicit searchingForm(QWidget *parent = 0);
    ~searchingForm();

private:
    Ui::searchingForm *ui;
};

#endif // SEARCHINGFORM_H
