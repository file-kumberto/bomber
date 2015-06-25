#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlComponent>
#include "timerbomb.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    TimerBomb timerBomber(&engine);
    engine.rootContext()->setContextProperty("timer", &timerBomber);

    return app.exec();
}
