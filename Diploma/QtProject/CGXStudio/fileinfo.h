#ifndef FILEINFO_H
#define FILEINFO_H


#include <QString>
#include <QFileInfo>


class FileInfo : public QObject
{
    Q_OBJECT

private:
    QFileInfo m_fi = QFileInfo();

public:
    explicit FileInfo(QObject *parent = nullptr);

    Q_INVOKABLE
    bool isFile(const QString &filePath);

};

#endif // FILEINFO_H
