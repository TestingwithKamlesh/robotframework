*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome

*** Test Cases ***
wait1
    open browser    ${amazon}    ${browser}
    maximize browser window
    wait until page does not contain    Prime
    click element    id:nav-link-prime

wait2
    open browser    ${amazon}    ${browser}
    maximize browser window
    wait until page contains    Prime
    click element    id:nav-link-prime

wait3
    open browser    ${amazon}    ${browser}
    maximize browser window
    wait until page contains element    xpath://a[@id='nav-logo-sprites']


wait4
    open browser    ${amazon}    ${browser}
    maximize browser window
    wait until page contains element    xpath://a[@id='nav-global-location-popover-link']


wait5
    open browser    ${amazon}    ${browser}
    maximize browser window
    wait until element is enabled    xpath://form[@id='nav-search-bar-form']
    Execute Javascript   window.open('https://www.facebook.com')
