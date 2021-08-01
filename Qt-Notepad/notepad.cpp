#include "notepad.h"
#include "ui_notepad.h"

#include <QFileDialog>
#include <QMessageBox>

Notepad::Notepad(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::Notepad)
{
    ui->setupUi(this);
}

Notepad::~Notepad()
{
    delete ui;
}

void Notepad::on_actionNew_triggered()
{
    currentfile.clear();
    ui->textEdit->setText(QString());
}


void Notepad::on_actionOpen_triggered()
{
    QString filename = QFileDialog::getOpenFileName(this, "Open the file");
    QFile file(filename);
    currentfile = filename;
    if(!file.open(QIODevice::ReadOnly | QFile::Text)){
        QMessageBox::warning(this, "Warning", "Cannot open file : " + file.errorString());
        return;
    }
    setWindowTitle(filename);
    QTextStream in(&file);
    QString text = in.readAll();
    ui->textEdit->setText(text);
    file.close();
}


void Notepad::on_actionSave_triggered()
{
    QString filename;
    if(currentfile.isEmpty())
    {
        filename = QFileDialog::getSaveFileName(this, "Save");
        currentfile = filename;
    }else{
        filename = currentfile;
    }
    QFile file(filename);
    if(!file.open(QIODevice::WriteOnly | QFile::Text)){
        QMessageBox::warning(this, "Warning", "Cannot save file : " + file.errorString());
        return;
    }
    setWindowTitle(filename);
    QTextStream out(&file);
    QString text = ui->textEdit->toPlainText();
    out << text;
    file.close();
}


void Notepad::on_actionSave_As_triggered()
{
    QString filename = QFileDialog::getSaveFileName(this, "Save As");
    QFile file(filename);
    if(!file.open(QIODevice::WriteOnly | QFile::Text)){
        QMessageBox::warning(this, "Warning", "Cannot save file : " + file.errorString());
        return;
    }
    currentfile = filename;
    setWindowTitle(filename);
    QTextStream out(&file);
    QString text = ui->textEdit->toPlainText();
    out << text;
    file.close();
}


void Notepad::on_actionPrint_triggered()
{
#if defined(QT_PRINTSUPPORT_LIB) && QT_CONFIG(printer)
    QPrinter printDev;
#if QT_CONFIG(printdialog)
    QPrintDialog dialog(&printDev, this);
    if(dialog.exec() == QDialog::Rejected){
        return;
    }
#endif
    ui->textEdit->print(&printDev);
#endif
}


void Notepad::on_actionExit_triggered()
{
    QCoreApplication::quit();
}


void Notepad::on_actionCopy_triggered()
{
#if QT_CONFIG(clipboard)
    ui->textEdit->copy();
#endif
}


void Notepad::on_actionCut_triggered()
{
#if QT_CONFIG(clipboard)
    ui->textEdit->cut();
#endif
}


void Notepad::on_actionPaste_triggered()
{
#if QT_CONFIG(clipboard)
    ui->textEdit->paste();
#endif
}


void Notepad::on_actionUndo_triggered()
{
    ui->textEdit->undo();
}


void Notepad::on_actionRedo_triggered()
{
    ui->textEdit->redo();
}

