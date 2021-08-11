*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
TC1
    #below line shows how list is created
    @{list1}=    create list    hello world    22    999.99    abc@xyz.com

    #below line show how to get the lenght of the list
    ${list_length}=    get length    ${list1}
    log to console    ${list_length}

    #below line shows how to fetch any value from the list using its index number
    ${list_data}=    get from list    ${list1}    1
    log to console    ${list_data}

    # below line shows how to use FOR loop and close the FOR loop
    FOR    ${i}    IN    @{list1}
    log to console    ${i}
    END
