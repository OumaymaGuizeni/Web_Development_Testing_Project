#!/bin/bash

# Function to run the Python app in the background
start_python_app() {
    nohup python3 ~/Test_Validation/my_web.py > /dev/null 2>&1 & echo $! > ~/Test_Validation/app_pid.txt
}

# Run the Python script in the background
start_python_app