#include <QObject>
#include "timerbomb.h"

TimerBomb::TimerBomb(QObject *parent)
    : QObject(parent)
{
    time_ = 59;
    QObject::connect(&timer, SIGNAL(timeout()), this, SLOT(updateTimer()));
    timer.start(1000);
}

int TimerBomb::time()const{
    return time_;
}

void TimerBomb::setTime(int second){
    time_ = second;
    emit timeChanged();
}
void TimerBomb::updateTimer(){
    if( time_ == 0 ) {
        time_ = 59;
    }
    if(doubleSpeed_ == 2){
        timer.setInterval(500);
    }
    time_ -= 1;
    setTime(time_);
}
void TimerBomb::doubleSpeed() {
    doubleSpeed_ = 2;
}
void TimerBomb::stopTimer() {
    timer.stop();
}

void TimerBomb::resetTimer() {
    doubleSpeed_ = 1;
    timer.start(1000);
    time_ = 59;

}

