#ifndef SYSTEMMODEL_H
#define SYSTEMMODEL_H


#include <QFileSystemModel>
#include <QDateTime>
#include <QDesktopServices>
#include <QUrl>



class SystemModel : public QFileSystemModel
{
    Q_OBJECT

public:

    explicit SystemModel(QObject *parent = nullptr);

    enum Roles
    {
        SizeRole = Qt::UserRole + 4,
        IsFileRole = Qt::UserRole + 5,
        UrlStringRole = Qt::UserRole + 6,
        FIconRole = Qt::UserRole + 7
    };

    Q_ENUM(Roles)

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    QHash<int,QByteArray> roleNames() const override;

    QString sizeString(const QFileInfo &fi) const;

    QString iconPath(const QFileInfo &fi) const;
};

#endif // SYSTEMMODEL_H
