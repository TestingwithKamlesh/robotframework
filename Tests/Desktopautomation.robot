*** Settings ***
Library    SikuliLibrary
Library    SikuliLibrary    mode=NEW

*** Variables ***


*** Test Cases ***
Start Sikuli Process
    start sikuli process
    Add image path    C:/Users/Kamlesh Kumar/Desktop/automate
    click    livescanicon.png
    wait until screen contain    username.png    15
    input text    username.png    FbFAdmin
    input text    password.png    FbFR0ck$
    sleep    3
    click    loginbutton.png
    wait until screen contain    searchtab.png    5
    click    searchtab.png
    wait until screen contain    awaitingresponsetab.png    5
    click    awaitingresponsetab.png
    #click    clonebutton.png
    #wait until screen contain    okpopup.png    5
    #click    okpopup.png
    #wait until screen contain    repsuccess.png    15
    #click    ok2.png
    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

    transaction control
    transaction control
    transaction control
    transaction control
    transaction control

*** Keywords ***
transaction control
    FOR    ${i}    IN    range    9999
    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png


    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonemap.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonenfuf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    Click    clonefauf.png
    wait until screen contain    okpopup.png    30
    Click    okpopup.png
    wait until screen contain    repsuccess.png    30
    Click    ok2.png

    END
