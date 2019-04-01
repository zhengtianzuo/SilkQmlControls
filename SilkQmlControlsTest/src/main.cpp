#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QString strAppPath = QCoreApplication::applicationDirPath();
    engine.addImportPath(strAppPath);
    engine.load(QUrl(QStringLiteral("qrc:/qmls/main.qml")));
    if (engine.rootObjects().isEmpty()) return -1;
    return app.exec();
}
