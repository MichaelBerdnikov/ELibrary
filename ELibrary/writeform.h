#ifndef WRITEFORM_H
#define WRITEFORM_H

#include <QWidget>

namespace Ui {
class writeForm;
}

class writeForm : public QWidget
{
    Q_OBJECT

public:
    explicit writeForm(QWidget *parent = 0);
    ~writeForm();

private:
    Ui::writeForm *ui;
};

#endif // WRITEFORM_H
