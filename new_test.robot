*** Settings ***
Documentation     This Test suite is prepared by Md. Ashiqussalehin
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    memo
    Input Password    mode
    Submit Credentials
    Error Page Should Be Open
    [Teardown]    Close Browser
    
*** Keywords ***
Error Page Should Be Open
    Location Should Be    ${ERROR URL}
