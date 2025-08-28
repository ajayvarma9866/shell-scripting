#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is a failure"
        exit 1
    else
        echo "$2 is a success"
    fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run this script using sudo user"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y
VALIDATE $? "installing mysql"
