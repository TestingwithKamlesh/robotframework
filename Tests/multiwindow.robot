*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome
${facebook}    https://www.facebook.com

*** Test Cases ***
switch multiple browser
    open browser    ${amazon}    ${browser}
    open browser    ${facebook}    ${browser}

    switch browser    2
    ${title}    get location
    log to console    ${title}
    click link    xpath://a[@title='English (UK)']
    close all browsers

switch multiple tabs in a browser
    open browser    ${facebook}    ${browser}
    maximize browser window
    execute javascript    window.open("https://www.amazon.com")
    switch window    Facebook - लॉग इन या साइन अप करें
    press keys    xpath://input[@name='email']    kamlesh.kumar@fulcrumbiometrics.com
    switch window    Amazon.com. Spend less. Smile more.

    @{tabs}    get window handles
    FOR    ${val}    IN    ${tabs}
    switch window    ${tabs}[0]
    END
    #close all browsers