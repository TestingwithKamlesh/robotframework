*** Settings ***
Library    SeleniumLibrary
Resource    ../userdefined keywords.robot

*** Test Cases ***
TC1- Gmail username
    [Documentation]    This testcase will check firstname and lastname
    [Setup]    open and maximize browser
    [Teardown]    close browser get title
    input text    id:firstName    Kamlesh
    input text    id:lastName    Kumar

TC2- Gmail emailID
    [Documentation]    This testcase will check emailaddress of the user
    [Setup]    open and maximize browser
    [Teardown]    close browser get title
    input text    id:username    kamlesh11179@gmail.com
