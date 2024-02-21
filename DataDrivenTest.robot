*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
Test Setup  Access QA Tools Login page
Test Teardown  Close Browsers
Test Template  Invalid Login

*** Test Cases ***
#                                               username        password
Invalid Username Valid Password                 name_error      pass_ok
Valid Username Invalid Password                 name_ok         pass_error
Invalid Username and Password                   name_error      pass_error

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    Click Authenticate Button
    Validate if Login is not successful

Test Branch



