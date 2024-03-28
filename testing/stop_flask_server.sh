#!/bin/bash

#Function to stop Python SFlask Server
stop_python_app() {
    if [ -f ~/Test_Validation/app_pid.txt ]; then
        pid=$(cat ~/Test_Validation/app_pid.txt)
        kill $pid
        rm ~/Test_Validation/app_pid.txt
        echo "Server stopped."
    else
        echo "Server is not running."
    fi
}

# Stop Python server 
stop_python_app