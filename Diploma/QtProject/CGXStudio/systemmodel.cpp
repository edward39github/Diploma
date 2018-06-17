#include "systemmodel.h"
#include <QDebug>


SystemModel::SystemModel(QObject *parent) : QFileSystemModel(parent)
{
    this->setRootPath("C:/Users/edward/CG-Cooperation/Square");
    this->setResolveSymlinks(true);
}


QVariant SystemModel::data(const QModelIndex &index, int role) const
{
    if (index.isValid() && role >= SizeRole)
    {
        switch (role)
        {
        case SizeRole:
            return QVariant(this->sizeString(fileInfo(index)));

        case IsFileRole:
            return QVariant(fileInfo(index).isFile());

        case FIconRole:
            return QVariant(this->iconPath(fileInfo(index)));

        case UrlStringRole:
            return QVariant(QUrl::fromLocalFile(filePath(index)).toString());

        default:
            break;
        }
    }
    return QFileSystemModel::data(index, role);
}

QHash<int,QByteArray> SystemModel::roleNames() const
{
     QHash<int, QByteArray> result = QFileSystemModel::roleNames();
     result.insert(SizeRole, QByteArrayLiteral("sizeFile"));
     result.insert(IsFileRole, QByteArrayLiteral("isFile"));
     result.insert(FIconRole, QByteArrayLiteral("ficon"));
     return result;
}

QString SystemModel::sizeString(const QFileInfo &fi) const
{
    if( fi.isDir() ) { return QString(); }

    float size = float( fi.size() );
    float value = size;
    QString suffix = " B";

    if( size > 10485760.0f ){
        value = size / 1048576.0f;
        suffix = " Mb";
    }
    else if( size > 10240.0f ){
        value = size / 1024;
        suffix = " Kb";
    }
    return QString::number(int(value)) + suffix;
}

QString SystemModel::iconPath(const QFileInfo &fi) const
{
    QString src = QString("C:/Users/edward/Desktop/KGTU/Diploma/QtProject/Icons/dst");

    if( fi.isDir() )
    {
        QString iconFolder = src + QString("/folders/%1.png").arg(fi.fileName());

        qDebug() << iconFolder;

        if( QFile::exists(iconFolder) ) { return iconFolder; }

        return src + QString("/folders/folder.png");
    }
    else
    {
        QString iconFile = src + QString("/files/%1.png").arg(fi.suffix());

        if( QFile::exists(iconFile) ) { return iconFile; }

        return src + QString("/files/empty.png");
    }
}
