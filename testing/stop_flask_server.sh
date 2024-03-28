#!/bin/bash

#Function to stop Python Flask Server
# according to my Testing on 28 Mars , this function is not working properly 
# fix needed 
stop_python_app() {
    if [ -f ~/Test_Validation/app_pid.txt ]; then
        pid=$(cat ~/Web_Development_Testing_Project/app_pid.txt)
        kill $pid
        rm ~/Web_Development_Testing_Project/app_pid.txt
        echo "Server stopped."
    else
        echo "Server is not running."
    fi
}

# Stop Python server 
stop_python_app