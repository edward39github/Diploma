#ifndef CGXQMLICONPROVIDER_H
#define CGXQMLICONPROVIDER_H

#include <QObject>
#include <QString>
#include <QFileInfo>


class CGXQMLIconProvider: public QObject
{
    Q_OBJECT

private:
    QFileInfo m_fi = QFileInfo();
    QString m_iconsStore;
    QString m_files;
    QString m_folders;
    QString m_iconsType;
    QString m_qmlPrefix;

protected:
    bool iconExist(const QString &name);
    bool fileExist(const QString &suffix);
    bool folderExist(const QString &name);

public:
    explicit CGXQMLIconProvider(QObject *parent = nullptr);

    Q_INVOKABLE
    QString icon(const QString &name);

    Q_INVOKABLE
    QString userIcon(const QString &name);

    Q_INVOKABLE
    QString fileIcon(const QString &suffix);

    Q_INVOKABLE
    QString programIcon(const QString &name);

    Q_INVOKABLE
    QString folderIcon(const QString &name);

    Q_INVOKABLE
    QString byPath(const QString &path, bool specificFolder = false);

    Q_INVOKABLE
    QString byFilePath(const QString &filePath);

    Q_INVOKABLE
    QString byFolderPath(const QString &dirPath, bool specificFolder);
};

#endif // CGXQMLICONPROVIDER_H
