/****************************************************************************
** Meta object code from reading C++ file 'systemmodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.11.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../CGXStudio/systemmodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'systemmodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.11.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SystemModel_t {
    QByteArrayData data[6];
    char stringdata0[62];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SystemModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SystemModel_t qt_meta_stringdata_SystemModel = {
    {
QT_MOC_LITERAL(0, 0, 11), // "SystemModel"
QT_MOC_LITERAL(1, 12, 5), // "Roles"
QT_MOC_LITERAL(2, 18, 8), // "SizeRole"
QT_MOC_LITERAL(3, 27, 10), // "IsFileRole"
QT_MOC_LITERAL(4, 38, 13), // "UrlStringRole"
QT_MOC_LITERAL(5, 52, 9) // "FIconRole"

    },
    "SystemModel\0Roles\0SizeRole\0IsFileRole\0"
    "UrlStringRole\0FIconRole"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SystemModel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       1,   14, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // enums: name, flags, count, data
       1, 0x0,    4,   18,

 // enum data: key, value
       2, uint(SystemModel::SizeRole),
       3, uint(SystemModel::IsFileRole),
       4, uint(SystemModel::UrlStringRole),
       5, uint(SystemModel::FIconRole),

       0        // eod
};

void SystemModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject SystemModel::staticMetaObject = {
    { &QFileSystemModel::staticMetaObject, qt_meta_stringdata_SystemModel.data,
      qt_meta_data_SystemModel,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *SystemModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SystemModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SystemModel.stringdata0))
        return static_cast<void*>(this);
    return QFileSystemModel::qt_metacast(_clname);
}

int SystemModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QFileSystemModel::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
