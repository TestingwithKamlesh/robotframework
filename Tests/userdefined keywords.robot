*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome
${facebook}    https://www.facebook.com
${gmail}    https://accounts.google.com/b/0/SignUp?service=mail

*** Keywords ***
open and maximize browser
    open browser    ${gmail}    ${browser}
    maximize browser window

open maximize browser with argument
    [Arguments]    ${inputurl}    ${inputbrowser}

    #user url input and browser will be fetched from above arguments
    open browser    ${inputurl}    ${inputbrowser}
    maximize browser window


open maximize browser with argument and return value
    [Arguments]    ${inputurl}    ${inputbrowser}
    open browser    ${inputurl}    ${inputbrowser}
    maximize browser window
    ${pagetitle}    get title
    log    ${pagetitle}
    #this will return a value i.e in this case the title of the page
    [Return]    ${pagetitle}

close browser get title
    ${pagetitle}=    get title
    log    ${pagetitle}
    close browser

minimize screen
    minimize browser window