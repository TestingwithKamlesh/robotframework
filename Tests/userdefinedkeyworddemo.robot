*** Settings ***
Library    SeleniumLibrary
Resource    D:/Personal/Robotframwork/Robotframe/Testcases/userdefined keywords.robot

*** Test Cases ***
Keyword without argument
    open and maximize browser
    input text    id:twotabsearchtextbox    samsung mobile

Keyword with argument
    open maximize browser with argument    https://facebook.com    chrome


Keyword with argument and return value
    # the return value can be save in the variable i.e in this case ${response}
    ${response}    open maximize browser with argument and return value    https://amazon.com    chrome
    log    ${response}
    # input the response value in the input text element
    input text    id:twotabsearchtextbox    ${response}
    close all browsers