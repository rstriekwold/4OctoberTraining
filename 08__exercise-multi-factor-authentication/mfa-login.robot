*** Settings ***
Suite Setup                    Open Browser                about:blank                 chrome
Suite Teardown                 Close All Browsers


*** Test Cases ***
Exercise 8 - Multi Factor Authentication
    [tags]        Lead                        Git Repo Exercise
    Appstate      Home
    LaunchApp     Sales

*** Keywords ***

Home
    [Documentation]            Navigate to homepage, login if needed
    GoTo                       ${home_url}
    Log Screenshot
    ${login_status} =          IsText                      To access this page, you have to log in to Salesforce.                     2
    Run Keyword If             ${login_status}             Login
    ClickText                  Home
    VerifyTitle                Home | Salesforce

Login
    [Documentation]            Login to Salesforce instance
    GoTo                       ${login_url}
    TypeText                   Username                    ${username}                 delay=1
    TypeText                   Password                    ${password}
    ClickText                  Log In