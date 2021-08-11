*** Settings ***
Library    SeleniumLibrary
Documentation    This testsuite opens amazon nd capturs screenshot of the page if amzon is present anywhere on the webpage

# belwo keyword "Test Timeout" is use to set timeout limit on Testsuite level
Test Timeout     60s

*** Variables ***
${amazon}    https://www.amazon.in
${browser}    Chrome


*** Test Cases ***
check validation using page should contain keyword
    [Documentation]    This testcase will open amazon browser and check for amazon
    open browser    ${amazon}    ${browser}

    # below keyword "[Timeout]" is used to set timeout limit on Testcase level
    [Timeout]    1mins
    #if testcase is not executed in given time it will fail

    # the keyword will only look for a matching text present on the page it does not takes any locator.
    page should contain    amazon
    capture page screenshot    ./Screenshots/validate.png
    close browser