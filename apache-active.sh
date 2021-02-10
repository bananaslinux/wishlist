#!/bin/bash


if [ `systemctl is-active apache2` == "active" ] ; then
echo `date +%Y-%m-%d" "%H:%M:%S` >> apache-active.log
echo "Apache2 is active" >> apache-active.log && echo >> apache-active.log
else
echo `date +%Y-%m-%d" "%H:%M:%S` >> apache-active.log
echo "Error! Apache2 status: INACTIVE"
echo "Apache2 status: INACTIVE" >> apache-active.log && echo >> apache-active.log
echo Details: >> apache-active.log
echo `systemctl status apache2` >> apache-active.log
echo >> apache-active.log
fi
