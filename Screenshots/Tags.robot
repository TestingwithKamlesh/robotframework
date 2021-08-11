*** Settings ***
Library    SeleniumLibrary
Default Tags    default
Force Tags    force

*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome
${facebook}    https://www.facebook.com
${gmail}    https://accounts.google.com/b/0/SignUp?service=mail


*** Test Cases ***
#check validation using page should contain keyword
    open browser    ${amazon}    ${browser}

    # the keyword will only look for a matching text present on the page it does not takes any locator.
    page should contain    amazon
    capture page screenshot    ./Screenshots/validate.png
    close browser

#check validation using page should not contain keyword

    open browser    ${amazon}    ${browser}
    page should not contain    id:nav-logo-sprites    #this case will pass a the keyword does not take any locator so it won't be able to find anything matching to this on the page
    close browser

#check valition using page should contain button keyword
    open browser    ${amazon}    ${browser}

    # the below keyword seems to working with the value attribute and the id attribute of the element i.e a search button
    page should contain button    go
    close browser

#check validation using page should contain textbox keyword
    open browser    ${amazon}    ${browser}
    page should contain textfield    twotabsearchtextbox
    close browser

#check validation using page should contain element keyword
    open browser    ${amazon}    ${browser}

    # this keyword will look for the mentioned element if it is present on the page or not
    page should contain element    class:nav-search-field
    close browser

check validation using page should contain checkbox keyword

    open browser    ${gmail}    ${browser}

    # these keyword will look for the checkbox element if it is present on the page or not
    page should contain checkbox    i3
    click element    i3
    checkbox should be selected    i3
    click element    i3
    checkbox should not be selected    i3
    select checkbox    i3
    close browser

check the title of the page
    [Tags]    regression
    #this keyword will check for the title of the page
    title should be    Create your Google Account

Check the element is enabled
    [Tags]    sanity    regression
    # this keyword will check if the element present on the page is enabled
    element should be enabled    id:firstName

Check the element is disabled
    [Tags]    smoke    functional
    # this keyword will check if the element present on the page is disabled
    element should be disabled    id:lastName

Check the visibility of the element
    [Tags]    smoke
    # this keyword will check if the element present on the page is visible
    element should be visible    id:firstName

    # this keyword will check if the element present on the page is not visible
    element should not be visible    id:lastName