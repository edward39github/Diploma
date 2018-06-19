#include "cgxqmliconprovider.h"


CGXQMLIconProvider::CGXQMLIconProvider(QObject *parent) : QObject(parent)
{
    m_iconsStore = QString("C:/Users/edward/Desktop/KGTU/Diploma/QtProject/Icons/dst");
    m_files = m_iconsStore + QString("/files");
    m_folders = m_iconsStore + QString("/folders");
    m_iconsType = QString(".png");
    m_qmlPrefix = "file:///";
}

bool CGXQMLIconProvider::iconExist(const QString &name)
{
    QString path = m_iconsStore + QString("/") + name + m_iconsType;

    m_fi.setFile(path);

    return m_fi.exists();
}

bool CGXQMLIconProvider::fileExist(const QString &suffix)
{
    QString path = m_files + QString("/") + suffix + m_iconsType;

    m_fi.setFile(path);

    return m_fi.exists();
}

bool CGXQMLIconProvider::folderExist(const QString &name)
{
    QString path = m_folders + QString("/") + name + m_iconsType;

    m_fi.setFile(path);

    return m_fi.exists();
}

QString CGXQMLIconProvider::icon(const QString &name)
{
    if( iconExist(name) )
    {
        return m_qmlPrefix + m_iconsStore + QString("/") + name + m_iconsType;
    }
    return QString("");
}

QString CGXQMLIconProvider::userIcon(const QString &name)
{
    return m_qmlPrefix + m_iconsStore + QString("/users/") + name + m_iconsType;
}

QString CGXQMLIconProvider::fileIcon(const QString &suffix)
{
    if( fileExist(suffix) )
    {
        return m_qmlPrefix + m_files + QString("/") + suffix + m_iconsType;
    }
    return m_qmlPrefix + m_files + QString("/") + "empty" + m_iconsType;
}

QString CGXQMLIconProvider::programIcon(const QString &name)
{
    return m_qmlPrefix + m_iconsStore + QString("/programs/") + name + m_iconsType;
}

QString CGXQMLIconProvider::folderIcon(const QString &name)
{
    if( folderExist(name) )
    {
        return m_qmlPrefix + m_folders + QString("/") + name + m_iconsType;
    }
    return m_qmlPrefix + m_iconsStore + QString("/") + "folder" + m_iconsType;
}

QString CGXQMLIconProvider::byPath(const QString &path, bool specificFolder)
{
    m_fi.setFile(path);

    if( m_fi.isDir() )
    {
        return byFolderPath(path, specificFolder);
    }
    return byFilePath(path);
}

QString CGXQMLIconProvider::byFilePath(const QString &filePath)
{
    m_fi.setFile(filePath);

    QString suffix = m_fi.suffix();

    if( suffix.isEmpty() )
    {
        suffix = QString("empty");
    }
    return fileIcon(suffix);
}

QString CGXQMLIconProvider::byFolderPath(const QString &dirPath, bool specificFolder)
{
    m_fi.setFile(dirPath);

    if( specificFolder )
        return folderIcon( m_fi.fileName() );
    return folderIcon( "folder" );
}
