*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${facebook}    https://www.facebook.com/
${flipkart}    https://www.flipkart.com/
${amazon}    https://www.amazon.in
${browser}    Chrome

*** Test Cases ***
Take screenshot
    open browser    ${facebook}    ${browser}
    maximize browser window
    input text    id:email    7987676674
    input text    id:pass    abc@1323

    #forward slash works in robot framework for providing any path.
    capture page screenshot   D:/Personal/Robotframwork/Robotframe/Testcases/screenshots/snap1.png

Close all browser windows
    open browser    ${flipkart}    ${browser}
    maximize browser window
    input text    xpath://body/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/input[1]    kamlesh11179@gmail.com

    # 'close all browsers' keyword closed all the opened browsers opened by the script
    close all browsers

Input new url
    open browser    ${flipkart}    ${browser}
    maximize browser window
    ${addr}    get location
    log to console    ${addr}
    # 'go to' keyword is used to move to a new url addresss
    go to    https://amazon.in
    ${addr}=    get location
    log to console    ${addr}

    go back
    close browser

Javascript execution
    open browser    ${amazon}    ${browser}
    maximize browser window

    # 'execute javascript' keyword can be used to perform browser specific actions.
    execute javascript    window.scrollTo(0,5000)
    close browser

Mouse operations
    open browser    ${amazon}    ${browser}
    maximize browser window

    #'open contect menu' keyword performs right click on any given element present on the page
    open context menu    link:Mobiles

    #'mouse over' used to take the mouse cursor over a specific element on the page
    mouse over    //a[@id='nav-link-accountList']

    mouse up    link:Electronics

    mouse down    link:Fashion
    mouse up    link:Fashion
    close browser

keyboard entries
    open browser    ${amazon}    ${browser}
    maximize browser window

    #'press keys' is used to provide keyboard input
    press keys    id:twotabsearchtextbox    tshirt

    #'\\' is used to enter to provide the ascii values of the particular keyboard key
    press keys    id:nav-search-submit-button    \\13


