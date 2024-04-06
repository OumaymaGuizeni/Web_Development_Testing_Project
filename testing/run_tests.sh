#!/bin/bash
# this script will run all the test cases of the project 
# you should add all new test cases here with the correct declaration 
# this script will be used in the pipeline CI/CD of the Project 
# this script is changed by a UI that handeles this for tester from 26 mars 2024

# ************************* List of Testcases ******************************
TEST_SUITES=(
    "test_cases/Test_our_home_page.robot"
    "test_cases/Test_our_team_page.robot"
    "test_cases/Test_our_content_menu.robot"
    "test_cases/Test_our_content_page.robot"
)

# **************************************************************************
# **************************************************************************
# ********************* Main Script ****************************************

clear
echo " Welcome to the Our Web Developement & Testing Project "
echo "This Project is For learning Purposes"
 

default_reply=1
echo "Do you want to run one Specific Test or ALL Test_cases ? "
echo "1) Specific Test"
echo "2) All Test Cases"

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
    echo "Available test cases:"
    for ((i=0; i<${#TEST_SUITES[@]}; i++)); do
        echo "$((i+1)): ${TEST_SUITES[$i]}"
    done

    # Prompt the user to choose a specific test case
    read -p "Enter the number of the test case you want to run: " choice

    # Check if the choice is valid
    if [[ ! $choice =~ ^[0-9]+$ ]] || [ "$choice" -lt 1 ] || [ "$choice" -gt "${#TEST_SUITES[@]}" ]; then
        echo "Invalid choice. Exiting..."
        return 1
    fi

    # Get the selected test case
    selected_test="${TEST_SUITES[$((choice-1))]}"

    # Run the selected Robot Framework test suite
    robot -d results "$selected_test"

elif [ "$response" -eq 2 ]; then
    echo "You chose All Test Cases."
    # Add your code to handle All Test Cases here
    # Run the Robot Framework tests in the foreground
    robot -d results "${TEST_SUITES[@]}"

else
    echo "Invalid choice."
    echo "Exiting Now"
    exit 1
fi

echo "Testcases are finished Executing Do you want to Generate The Data Report Summary ?"
echo "1)Yes"
echo "2)No"





                      
