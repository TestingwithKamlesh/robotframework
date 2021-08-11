*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.facebook.com/
${browser}    Chrome
*** Test Cases ***
Testcase for selenium speed
    ${speed}    get selenium speed
    log to console  ${speed}
    open browser    ${url}    ${browser}
    maximize browser window

    # 'sleep' keyword is used to set the speed of the selenium at any particular step in a testcase
     sleep    10 seconds

    input text    id:email    7987676674

    # 'set selenium speed' keyword is used to set the timeout interval for every step to be excuted in a testcase
    #set selenium speed    5

    input text    id:pass    abc@1323
    # 'get selenium speed' keyword is used to get the execution speed of the selenium for testcases
    ${speed}    get selenium speed
    log to console    ${speed}
    click button    //button[@type='submit']
    close browser

Testcase for selenium timeout
    open browser    ${url}    ${browser}
    maximize browser window
    ${timout}    get selenium timeout
    log to console    ${timout}
    set selenium timeout    15
    wait until page contains    testing
    input text    id:email    7987676674
    input text    id:pass    abc@1323
    close browser