/****************************************************************************
** Meta object code from reading C++ file 'MainWindow.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../../src/perception/find-object-melodic-devel/include/find_object/MainWindow.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MainWindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_find_object__MainWindow_t {
    QByteArrayData data[44];
    char stringdata0[647];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_find_object__MainWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_find_object__MainWindow_t qt_meta_stringdata_find_object__MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 23), // "find_object::MainWindow"
QT_MOC_LITERAL(1, 24, 12), // "objectsFound"
QT_MOC_LITERAL(2, 37, 0), // ""
QT_MOC_LITERAL(3, 38, 26), // "find_object::DetectionInfo"
QT_MOC_LITERAL(4, 65, 15), // "startProcessing"
QT_MOC_LITERAL(5, 81, 14), // "stopProcessing"
QT_MOC_LITERAL(6, 96, 15), // "pauseProcessing"
QT_MOC_LITERAL(7, 112, 6), // "update"
QT_MOC_LITERAL(8, 119, 7), // "cv::Mat"
QT_MOC_LITERAL(9, 127, 5), // "image"
QT_MOC_LITERAL(10, 133, 11), // "loadSession"
QT_MOC_LITERAL(11, 145, 11), // "saveSession"
QT_MOC_LITERAL(12, 157, 12), // "loadSettings"
QT_MOC_LITERAL(13, 170, 12), // "saveSettings"
QT_MOC_LITERAL(14, 183, 11), // "loadObjects"
QT_MOC_LITERAL(15, 195, 11), // "saveObjects"
QT_MOC_LITERAL(16, 207, 14), // "loadVocabulary"
QT_MOC_LITERAL(17, 222, 14), // "saveVocabulary"
QT_MOC_LITERAL(18, 237, 18), // "addObjectFromScene"
QT_MOC_LITERAL(19, 256, 19), // "addObjectsFromFiles"
QT_MOC_LITERAL(20, 276, 9), // "fileNames"
QT_MOC_LITERAL(21, 286, 16), // "addObjectFromTcp"
QT_MOC_LITERAL(22, 303, 2), // "id"
QT_MOC_LITERAL(23, 306, 8), // "filePath"
QT_MOC_LITERAL(24, 315, 17), // "loadSceneFromFile"
QT_MOC_LITERAL(25, 333, 24), // "setupCameraFromVideoFile"
QT_MOC_LITERAL(26, 358, 30), // "setupCameraFromImagesDirectory"
QT_MOC_LITERAL(27, 389, 20), // "setupCameraFromTcpIp"
QT_MOC_LITERAL(28, 410, 12), // "removeObject"
QT_MOC_LITERAL(29, 423, 23), // "find_object::ObjWidget*"
QT_MOC_LITERAL(30, 447, 6), // "object"
QT_MOC_LITERAL(31, 454, 16), // "removeAllObjects"
QT_MOC_LITERAL(32, 471, 17), // "updateObjectsSize"
QT_MOC_LITERAL(33, 489, 16), // "updateMirrorView"
QT_MOC_LITERAL(34, 506, 16), // "showHideControls"
QT_MOC_LITERAL(35, 523, 19), // "showObjectsFeatures"
QT_MOC_LITERAL(36, 543, 19), // "hideObjectsFeatures"
QT_MOC_LITERAL(37, 563, 13), // "updateObjects"
QT_MOC_LITERAL(38, 577, 23), // "notifyParametersChanged"
QT_MOC_LITERAL(39, 601, 5), // "param"
QT_MOC_LITERAL(40, 607, 15), // "moveCameraFrame"
QT_MOC_LITERAL(41, 623, 5), // "frame"
QT_MOC_LITERAL(42, 629, 11), // "rectHovered"
QT_MOC_LITERAL(43, 641, 5) // "objId"

    },
    "find_object::MainWindow\0objectsFound\0"
    "\0find_object::DetectionInfo\0startProcessing\0"
    "stopProcessing\0pauseProcessing\0update\0"
    "cv::Mat\0image\0loadSession\0saveSession\0"
    "loadSettings\0saveSettings\0loadObjects\0"
    "saveObjects\0loadVocabulary\0saveVocabulary\0"
    "addObjectFromScene\0addObjectsFromFiles\0"
    "fileNames\0addObjectFromTcp\0id\0filePath\0"
    "loadSceneFromFile\0setupCameraFromVideoFile\0"
    "setupCameraFromImagesDirectory\0"
    "setupCameraFromTcpIp\0removeObject\0"
    "find_object::ObjWidget*\0object\0"
    "removeAllObjects\0updateObjectsSize\0"
    "updateMirrorView\0showHideControls\0"
    "showObjectsFeatures\0hideObjectsFeatures\0"
    "updateObjects\0notifyParametersChanged\0"
    "param\0moveCameraFrame\0frame\0rectHovered\0"
    "objId"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_find_object__MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      34,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  184,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,  187,    2, 0x0a /* Public */,
       5,    0,  188,    2, 0x0a /* Public */,
       6,    0,  189,    2, 0x0a /* Public */,
       7,    1,  190,    2, 0x0a /* Public */,
      10,    0,  193,    2, 0x08 /* Private */,
      11,    0,  194,    2, 0x08 /* Private */,
      12,    0,  195,    2, 0x08 /* Private */,
      13,    0,  196,    2, 0x08 /* Private */,
      14,    0,  197,    2, 0x08 /* Private */,
      15,    0,  198,    2, 0x08 /* Private */,
      16,    0,  199,    2, 0x08 /* Private */,
      17,    0,  200,    2, 0x08 /* Private */,
      18,    0,  201,    2, 0x08 /* Private */,
      19,    1,  202,    2, 0x08 /* Private */,
      19,    0,  205,    2, 0x08 /* Private */,
      21,    3,  206,    2, 0x08 /* Private */,
      24,    1,  213,    2, 0x08 /* Private */,
      24,    0,  216,    2, 0x08 /* Private */,
      25,    0,  217,    2, 0x08 /* Private */,
      26,    0,  218,    2, 0x08 /* Private */,
      27,    0,  219,    2, 0x08 /* Private */,
      28,    1,  220,    2, 0x08 /* Private */,
      28,    1,  223,    2, 0x08 /* Private */,
      31,    0,  226,    2, 0x08 /* Private */,
      32,    0,  227,    2, 0x08 /* Private */,
      33,    0,  228,    2, 0x08 /* Private */,
      34,    0,  229,    2, 0x08 /* Private */,
      35,    0,  230,    2, 0x08 /* Private */,
      36,    0,  231,    2, 0x08 /* Private */,
      37,    0,  232,    2, 0x08 /* Private */,
      38,    1,  233,    2, 0x08 /* Private */,
      40,    1,  236,    2, 0x08 /* Private */,
      42,    1,  239,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Bool,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QStringList,   20,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 8, QMetaType::Int, QMetaType::QString,    9,   22,   23,
    QMetaType::Void, QMetaType::QStringList,   20,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 29,   30,
    QMetaType::Void, QMetaType::Int,   22,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QStringList,   39,
    QMetaType::Void, QMetaType::Int,   41,
    QMetaType::Void, QMetaType::Int,   43,

       0        // eod
};

void find_object::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->objectsFound((*reinterpret_cast< const find_object::DetectionInfo(*)>(_a[1]))); break;
        case 1: _t->startProcessing(); break;
        case 2: _t->stopProcessing(); break;
        case 3: _t->pauseProcessing(); break;
        case 4: _t->update((*reinterpret_cast< const cv::Mat(*)>(_a[1]))); break;
        case 5: _t->loadSession(); break;
        case 6: _t->saveSession(); break;
        case 7: _t->loadSettings(); break;
        case 8: _t->saveSettings(); break;
        case 9: _t->loadObjects(); break;
        case 10: { bool _r = _t->saveObjects();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 11: _t->loadVocabulary(); break;
        case 12: _t->saveVocabulary(); break;
        case 13: _t->addObjectFromScene(); break;
        case 14: _t->addObjectsFromFiles((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 15: _t->addObjectsFromFiles(); break;
        case 16: _t->addObjectFromTcp((*reinterpret_cast< const cv::Mat(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 17: _t->loadSceneFromFile((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 18: _t->loadSceneFromFile(); break;
        case 19: _t->setupCameraFromVideoFile(); break;
        case 20: _t->setupCameraFromImagesDirectory(); break;
        case 21: _t->setupCameraFromTcpIp(); break;
        case 22: _t->removeObject((*reinterpret_cast< find_object::ObjWidget*(*)>(_a[1]))); break;
        case 23: _t->removeObject((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 24: _t->removeAllObjects(); break;
        case 25: _t->updateObjectsSize(); break;
        case 26: _t->updateMirrorView(); break;
        case 27: _t->showHideControls(); break;
        case 28: _t->showObjectsFeatures(); break;
        case 29: _t->hideObjectsFeatures(); break;
        case 30: _t->updateObjects(); break;
        case 31: _t->notifyParametersChanged((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 32: _t->moveCameraFrame((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 33: _t->rectHovered((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (MainWindow::*_t)(const find_object::DetectionInfo & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MainWindow::objectsFound)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject find_object::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_find_object__MainWindow.data,
      qt_meta_data_find_object__MainWindow,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *find_object::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *find_object::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_find_object__MainWindow.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int find_object::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 34)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 34;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 34)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 34;
    }
    return _id;
}

// SIGNAL 0
void find_object::MainWindow::objectsFound(const find_object::DetectionInfo & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
