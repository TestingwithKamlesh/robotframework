*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${URL}    https://www.facebook.com/

*** Test Cases ***
open flipkart website in chrome browser
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds

    # keyword used to provide text input
    input text    id:email    7987676674
    input text    id:pass    Kamlesh@12

    # keyword used to work with buttons and links
    click button    xpath://button[@type='submit']
    click link    xpath://a[text()='English (UK)']
    click link    xpath://a[text()='Forgotten password?']