#!/bin/sh

echo 'Starting....'
echo 'Pausing for 2 seconds'
sleep 2
echo 'Ended'

pwd

PID_FLASK=$(ps aux | grep flask_test.py | grep -v grep | awk '{print $2}')
echo $PID_FLASK

if [ -n "$PID_FLASK" ]
then
    kill -15 "$PID_FLASK"
else
    echo 'flask_test.py process is not running' 
fi

kill -15 "$PID_FLASK"

