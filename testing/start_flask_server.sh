#!/bin/bash

# Function to run the Python app in the background
start_python_app() {
    nohup python3 ~/Web_Development_Testing_Project/my_web.py > /dev/null 2>&1 & echo $! > ~/Web_Development_Testing_Project/app_pid.txt
}

# Run the Python script in the background
start_python_app