#!/bin/bash

# this script will run all the test cases of the project or give you the option 
# to run only one specific Test Case
# you should add all new test cases here with the correct declaration 
# The script also generate at the end a very sophisticated report that summarize the performance of the execution 


# ************************* List of Testcases ******************************

TEST_SUITES=(
    "test_cases/Test_our_home_page.robot"
    "test_cases/Test_our_team_page.robot"
    "test_cases/Test_our_content_menu.robot"
    "test_cases/Test_our_content_page.robot"
    "test_cases/Test_our_footer.robot"
)

# **********************************************************************************
# **********************************************************************************
# ***************************** Main Script ****************************************

clear
echo " Welcome to the Our Web Developement & Testing Project "
current_time_and_date=$(date "+%T %F")
echo "Time and date of This execution: $current_time_and_date"
 

default_reply=1
echo "**********************************************************"
echo "Do you want to run one Specific Test or ALL Test_cases ? "
echo "1) Specific Test"
echo "2) All Test Cases"
echo "***********************************************************"
echo ""

# Prompt the user for input and store it in the variable 'response'
read -p "Enter your choice (default is $default_reply): " response

# If the user didn't provide any input, set the response to the default value
if [ -z "$response" ]; then
    response=$default_reply
fi

# Check the user's response
if [ "$response" -eq 1 ]; then
    echo "You chose Specific Test."
    echo""
    # Print the list of available test cases
    echo "***********************************"
    echo "Available test cases:"
    for ((i=0; i<${#TEST_SUITES[@]}; i++)); do
        echo "$((i+1)): ${TEST_SUITES[$i]}"
    done
    echo "***********************************"
    echo ""

    # Prompt the user to choose a specific test case
    read -p "Enter the number of the test case you want to run: " choice

    # Check if the choice is valid
    if [[ ! $choice =~ ^[0-9]+$ ]] || [ "$choice" -lt 1 ] || [ "$choice" -gt "${#TEST_SUITES[@]}" ]; then
        echo "**************************"
        echo "Invalid choice. Exiting..."
        echo "**************************"
        echo ""
        return 1
    fi

    # Get the selected test case
    selected_test="${TEST_SUITES[$((choice-1))]}"

    # Run the selected Robot Framework test suite
    robot -d results "$selected_test"

elif [ "$response" -eq 2 ]; then
    echo "**************************"
    echo "You chose All Test Cases."
    echo "**************************"
    echo ""

    # Add your code to handle All Test Cases here
    robot -d results "${TEST_SUITES[@]}"

else
    echo "Invalid choice."
    echo "Exiting Now"
    exit 1
fi

default_reply=1
echo "**********************************************************************************"
echo "Testcases are finished Executing Do you want to Generate The Data Report Summary ?"
echo "1) Yes"
echo "2) No"
echo "**********************************************************************************"

# Prompt the user for input and store it in the variable 'response'
read -p "Enter your choice (default is $default_reply): " response

# If the user didn't provide any input, set the response to the default value
if [ -z "$response" ]; then
    response=$default_reply
fi

if [ "$response" -eq 1 ]; then
    echo "Checking if The Dependacy are Present in Your Machine and Installing them "
    sleep   2
    pip install robotframework-metrics==3.3.3
    sleep   5
    pwd
    cd results/
    pwd
    robotmetrics
else
    echo "Exiting The Report Will be Not Generated"
    exit 1 
fi






                      
