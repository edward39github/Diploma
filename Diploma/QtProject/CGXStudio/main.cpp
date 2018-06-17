#include <QGuiApplication>
#include <QtQml>
#include <QQmlContext>
#include <QQmlApplicationEngine>

#include "systemmodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    SystemModel *fsm = new SystemModel(&engine);

    qmlRegisterUncreatableType<SystemModel>("CGXStudio", 1, 0, "SystemModel", "Cannot create a SystemModel instance.");

    engine.rootContext()->setContextProperty("sysModel", fsm);
    engine.rootContext()->setContextProperty("rootPathIndex", fsm->index(fsm->rootPath()));
    engine.rootContext()->setContextProperty("Icons", QString("file:///C:/Users/edward/Desktop/KGTU/Diploma/QtProject/Icons/dst/"));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if( engine.rootObjects().isEmpty() ){ return -1; }

    return app.exec();
}
