/****************************************************************************
** Meta object code from reading C++ file 'FindObjectROS.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/perception/find-object-melodic-devel/src/ros/FindObjectROS.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FindObjectROS.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_FindObjectROS_t {
    QByteArrayData data[13];
    char stringdata0[132];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_FindObjectROS_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_FindObjectROS_t qt_meta_stringdata_FindObjectROS = {
    {
QT_MOC_LITERAL(0, 0, 13), // "FindObjectROS"
QT_MOC_LITERAL(1, 14, 7), // "publish"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 26), // "find_object::DetectionInfo"
QT_MOC_LITERAL(4, 50, 4), // "info"
QT_MOC_LITERAL(5, 55, 12), // "setDepthData"
QT_MOC_LITERAL(6, 68, 11), // "std::string"
QT_MOC_LITERAL(7, 80, 7), // "frameId"
QT_MOC_LITERAL(8, 88, 9), // "ros::Time"
QT_MOC_LITERAL(9, 98, 5), // "stamp"
QT_MOC_LITERAL(10, 104, 7), // "cv::Mat"
QT_MOC_LITERAL(11, 112, 5), // "depth"
QT_MOC_LITERAL(12, 118, 13) // "depthConstant"

    },
    "FindObjectROS\0publish\0\0"
    "find_object::DetectionInfo\0info\0"
    "setDepthData\0std::string\0frameId\0"
    "ros::Time\0stamp\0cv::Mat\0depth\0"
    "depthConstant"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FindObjectROS[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x0a /* Public */,
       5,    4,   27,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6, 0x80000000 | 8, 0x80000000 | 10, QMetaType::Float,    7,    9,   11,   12,

       0        // eod
};

void FindObjectROS::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        FindObjectROS *_t = static_cast<FindObjectROS *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->publish((*reinterpret_cast< const find_object::DetectionInfo(*)>(_a[1]))); break;
        case 1: _t->setDepthData((*reinterpret_cast< const std::string(*)>(_a[1])),(*reinterpret_cast< const ros::Time(*)>(_a[2])),(*reinterpret_cast< const cv::Mat(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        default: ;
        }
    }
}

const QMetaObject FindObjectROS::staticMetaObject = {
    { &find_object::FindObject::staticMetaObject, qt_meta_stringdata_FindObjectROS.data,
      qt_meta_data_FindObjectROS,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *FindObjectROS::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FindObjectROS::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_FindObjectROS.stringdata0))
        return static_cast<void*>(this);
    return find_object::FindObject::qt_metacast(_clname);
}

int FindObjectROS::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = find_object::FindObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
