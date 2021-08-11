*** Settings ***
Library    SeleniumLibrary
Resource    ../Testcases/userdefined keywords.robot

    # if the below keyword is used in Settings,the Test setup and teardown applies on each and every testcases one by one
Test Setup    open and maximize browser
Test Teardown    close browser get title

    # if the below keyword is used in Settings,the Suite setup and teardown applies once on the suite for all the testcases
Suite Setup    open and maximize browser
Suite Teardown    close browser get title


*** Test Cases ***
TC1- Gmail username
    [Documentation]    This testcase will check firstname and lastname
    [Setup]    open and maximize browser
        #if two setups are used only the firstone is accepted, it gives error but passes testcase with the first one
        #[Setup]    Minimize
    [Teardown]    close browser get title
    input text    id:firstName    Kamlesh
    input text    id:lastName    Kumar

TC2- Gmail emailID
    [Documentation]    This testcase will check emailaddress of the user
    [Setup]    open and maximize browser
    [Teardown]    close browser get title
    input text    id:username    kamlesh11179@gmail.com
