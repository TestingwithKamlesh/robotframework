*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome
${facebook}    https://www.facebook.com
${zerodha}    https://kite.zerodha.com/

*** Test Cases ***
element text should be
    open browser    ${zerodha}    ${browser}

    # this keyword will look for the exact text
    element text should be    xpath://h2[contains(text(),'Login to Kite')]    Login to Kite
    click link    Forgot password?
    click element    //label[contains(text(),'SMS')]

    # this keyword will search for this exact element and if the exact text is not present it will execute next step
    element text should not be    xpath://h2[contains(text(),'Forgot your password?')]    Forgot your password
    go back
    #close browser
element should contain
    #open browser    ${zerodha}    ${browser}

    # this keyword will look for the partial text
    element should contain    xpath://h2[contains(text(),'Login to Kite')]    Kite
    click link    Forgot password?
    click element    //label[contains(text(),'SMS')]

    # this keyword will search for this partialtext and if the text is not present it will execute next step
    element text should not be    xpath://h2[contains(text(),'Forgot your password?')]    Forgot your
