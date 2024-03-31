#!/bin/bash
# this script will run all the test cases of the project 
# you should add all new test cases here with the correct declaration 
# this script will be used in the pipeline CI/CD of the Project 
# this script is changed by a UI that handeles this for tester from 26 mars 2024

echo " Start Running All test Cases Based on Your Request " 
echo "*****************************"


# Function to run Robot Framework tests
run_robot_tests() {
    # Define the paths to your test suites in an array
    TEST_SUITES=(
        "test_cases/Test_our_home_page.robot"
        "test_cases/Test_our_team_page.robot"
        # "test_cases/Test_our_content_page.robot"

        #"test_suites/5000.robot" # this test is not well implemented 
        # Add more test suites here if needed
    )
    
    # Check if there are any test suites to run
    if [ ${#TEST_SUITES[@]} -eq 0 ]; then
        echo "No test suites found. Exiting..."
        return 1  # You can choose to exit the function or script here
    fi
    
    # Run the Robot Framework test suites
    robot -d results "${TEST_SUITES[@]}"
}


# Run the Robot Framework tests in the foreground
run_robot_tests

# Wait for the Python script to finish
exit

                      
