/********************************************************************************
** Form generated from reading UI file 'DialogKeyboard.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DIALOGKEYBOARD_H
#define UI_DIALOGKEYBOARD_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_DialogKeyboard
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *DialogKeyboard)
    {
        if (DialogKeyboard->objectName().isEmpty())
            DialogKeyboard->setObjectName(QStringLiteral("DialogKeyboard"));
        DialogKeyboard->resize(360, 229);
        DialogKeyboard->setMaximumSize(QSize(701, 411));
        verticalLayout = new QVBoxLayout(DialogKeyboard);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        label = new QLabel(DialogKeyboard);
        label->setObjectName(QStringLiteral("label"));
        label->setPixmap(QPixmap(QString::fromUtf8(":/drone_keyboard/drone_keyboard.png")));
        label->setScaledContents(true);

        verticalLayout->addWidget(label);

        buttonBox = new QDialogButtonBox(DialogKeyboard);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        retranslateUi(DialogKeyboard);
        QObject::connect(buttonBox, SIGNAL(accepted()), DialogKeyboard, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), DialogKeyboard, SLOT(reject()));

        QMetaObject::connectSlotsByName(DialogKeyboard);
    } // setupUi

    void retranslateUi(QDialog *DialogKeyboard)
    {
        DialogKeyboard->setWindowTitle(QApplication::translate("DialogKeyboard", "Keyboard controller", Q_NULLPTR));
        label->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class DialogKeyboard: public Ui_DialogKeyboard {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DIALOGKEYBOARD_H
