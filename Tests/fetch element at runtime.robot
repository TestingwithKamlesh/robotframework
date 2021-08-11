*** Settings ***
Library    SeleniumLibrary
Resource    ./userdefined keywords.robot
Library    D://Personal/Robotframwork/Robotframe/Testcases/python userdefined keywords/PythonRobotKeywords.py
Default Tags    Runtime data
Force Tags    Runtime
Suite Setup    open maximize browser with argument    https://www.amazon.in    Chrome
Suite Teardown    close browser get title

*** Test Cases ***
TC1 get page title
    ${title}    get title
    log    ${title}

TC2 fetch selenium speed
    ${speed}    get selenium speed
    log    ${speed}

TC3 fetch value of any element of a page
    ${value}    get value    id:nav-logo-sprites
    log    ${value}

TC4 fetch text of any element of a page
    [Documentation]    This test case will fetch the text of a given element located on the current page
    [Tags]    ham menu
    click element    id:nav-hamburger-menu
    ${element text}    get text    xpath://div[@class="hmenu-item hmenu-title "]
    log    ${element text}

TC5 fetch value of any list/dropdown of a page
    select from list by index    name:url    1
    ${list value}    get selected list value    name:url
    log    ${list value}

    ${list label}    get selected list label    name:url
    log    ${list label}

    ${all items}    get list items    name:url
    log    ${all items}

TC6 fetch attributes of an element
    ${attr}    get element attribute    name:url    select
    log    ${attr}

TC7 fetch element count
    ${cnt}    get element count    name:url
    log to console    ${cnt}

TC8 new folder
    make directory    foldername1
    contatination    kamlesh    pass@123
*** Keywords ***
make directory
    [Arguments]    ${foldername}
    #using python keyword without argument
    create_folder
    subfolder
    log to console    task successful

    #using python keyword with arguments
    argfolder    ${foldername}

# using python keyword with argument and return value
contatination
    [Arguments]    ${username}    ${password}
    # we store the return value in the idpass variable
    ${idpass}=    concatinate    ${username}    ${password}
    log to console    ${idpass}