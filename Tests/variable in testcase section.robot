*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
set variable in testcases
    ${var1}=    set variable    Hello world
    log to console    ${var1}
