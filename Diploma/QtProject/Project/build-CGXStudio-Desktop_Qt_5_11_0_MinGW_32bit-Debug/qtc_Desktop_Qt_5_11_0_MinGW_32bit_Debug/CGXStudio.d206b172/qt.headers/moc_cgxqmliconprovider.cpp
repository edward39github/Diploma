/****************************************************************************
** Meta object code from reading C++ file 'cgxqmliconprovider.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.11.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../CGXStudio/cgxqmliconprovider.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'cgxqmliconprovider.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.11.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_CGXQMLIconProvider_t {
    QByteArrayData data[16];
    char stringdata0[146];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_CGXQMLIconProvider_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_CGXQMLIconProvider_t qt_meta_stringdata_CGXQMLIconProvider = {
    {
QT_MOC_LITERAL(0, 0, 18), // "CGXQMLIconProvider"
QT_MOC_LITERAL(1, 19, 4), // "icon"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 4), // "name"
QT_MOC_LITERAL(4, 30, 8), // "userIcon"
QT_MOC_LITERAL(5, 39, 8), // "fileIcon"
QT_MOC_LITERAL(6, 48, 6), // "suffix"
QT_MOC_LITERAL(7, 55, 11), // "programIcon"
QT_MOC_LITERAL(8, 67, 10), // "folderIcon"
QT_MOC_LITERAL(9, 78, 6), // "byPath"
QT_MOC_LITERAL(10, 85, 4), // "path"
QT_MOC_LITERAL(11, 90, 14), // "specificFolder"
QT_MOC_LITERAL(12, 105, 10), // "byFilePath"
QT_MOC_LITERAL(13, 116, 8), // "filePath"
QT_MOC_LITERAL(14, 125, 12), // "byFolderPath"
QT_MOC_LITERAL(15, 138, 7) // "dirPath"

    },
    "CGXQMLIconProvider\0icon\0\0name\0userIcon\0"
    "fileIcon\0suffix\0programIcon\0folderIcon\0"
    "byPath\0path\0specificFolder\0byFilePath\0"
    "filePath\0byFolderPath\0dirPath"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_CGXQMLIconProvider[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x02 /* Public */,
       4,    1,   62,    2, 0x02 /* Public */,
       5,    1,   65,    2, 0x02 /* Public */,
       7,    1,   68,    2, 0x02 /* Public */,
       8,    1,   71,    2, 0x02 /* Public */,
       9,    2,   74,    2, 0x02 /* Public */,
       9,    1,   79,    2, 0x22 /* Public | MethodCloned */,
      12,    1,   82,    2, 0x02 /* Public */,
      14,    2,   85,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::QString, QMetaType::QString,    3,
    QMetaType::QString, QMetaType::QString,    3,
    QMetaType::QString, QMetaType::QString,    6,
    QMetaType::QString, QMetaType::QString,    3,
    QMetaType::QString, QMetaType::QString,    3,
    QMetaType::QString, QMetaType::QString, QMetaType::Bool,   10,   11,
    QMetaType::QString, QMetaType::QString,   10,
    QMetaType::QString, QMetaType::QString,   13,
    QMetaType::QString, QMetaType::QString, QMetaType::Bool,   15,   11,

       0        // eod
};

void CGXQMLIconProvider::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        CGXQMLIconProvider *_t = static_cast<CGXQMLIconProvider *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { QString _r = _t->icon((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 1: { QString _r = _t->userIcon((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 2: { QString _r = _t->fileIcon((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 3: { QString _r = _t->programIcon((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 4: { QString _r = _t->folderIcon((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 5: { QString _r = _t->byPath((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 6: { QString _r = _t->byPath((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 7: { QString _r = _t->byFilePath((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 8: { QString _r = _t->byFolderPath((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject CGXQMLIconProvider::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_CGXQMLIconProvider.data,
      qt_meta_data_CGXQMLIconProvider,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *CGXQMLIconProvider::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *CGXQMLIconProvider::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CGXQMLIconProvider.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int CGXQMLIconProvider::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
