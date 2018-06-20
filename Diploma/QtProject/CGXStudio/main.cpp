#include <QGuiApplication>
#include <QtQml>
#include <QQmlContext>
#include <QQmlApplicationEngine>

#include "systemmodel.h"
#include "fileinfo.h"
#include "cgxqmliconprovider.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    FileInfo *fi = new FileInfo(&engine);
    SystemModel *fsm = new SystemModel(&engine);
    CGXQMLIconProvider *ip = new CGXQMLIconProvider(&engine);

//    qmlRegisterUncreatableType<SystemModel>("CGXStudio", 1, 0, "SystemModel", "Cannot create a SystemModel instance.");

    engine.rootContext()->setContextProperty("FileInformator", fi);
    engine.rootContext()->setContextProperty("Icons", ip);
    engine.rootContext()->setContextProperty("sysModel", fsm);
    engine.rootContext()->setContextProperty("rootPathIndex", fsm->index(fsm->rootPath()));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if( engine.rootObjects().isEmpty() ){ return -1; }

    return app.exec();
}
