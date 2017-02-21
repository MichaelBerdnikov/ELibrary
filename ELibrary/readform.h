#ifndef READFORM_H
#define READFORM_H

#include <QWidget>

namespace Ui {
class readform;
}

class readform : public QWidget
{
    Q_OBJECT

public:
    explicit readform(QWidget *parent = 0);
    ~readform();

private:
    Ui::readform *ui;
};

#endif // READFORM_H
