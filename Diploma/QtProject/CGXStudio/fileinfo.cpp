#include "fileinfo.h"

FileInfo::FileInfo(QObject *parent) : QObject(parent)
{

}

bool FileInfo::isFile(const QString &filePath)
{
    m_fi.setFile(filePath);
    return m_fi.isFile();
}
