#ifndef SIGNINWINDOW_H
#define SIGNINWINDOW_H

#include <QWidget>

namespace Ui {
class signinwindow;
}

class signinwindow : public QWidget
{
    Q_OBJECT

public:
    explicit signinwindow(QWidget *parent = 0);
    ~signinwindow();

private:
    Ui::signinwindow *ui;
};

#endif // SIGNINWINDOW_H
