#ifndef TIMERBOMB_H
#define TIMERBOMB_H

#include <QObject>
#include <QTimer>

class TimerBomb : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int time READ time WRITE setTime NOTIFY timeChanged)
    public:
        TimerBomb(QObject *parent = 0);

        void setTime(int second);
        int time()const;
        Q_INVOKABLE void doubleSpeed();
        Q_INVOKABLE void stopTimer();
        Q_INVOKABLE void resetTimer();


    signals:
        void timeChanged();

    public slots:
        void updateTimer();

    private:
        QTimer timer;
        int time_;
        int doubleSpeed_;
};

#endif // TIMERBOMB_H
