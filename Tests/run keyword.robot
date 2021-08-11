*** Test Cases ***
run keyword demonstration
    ${run_key}=     set variable    log to console
    run keyword    ${run_key}    this example is for run keyword

run keyword if demonstration
    ${run_key1}=    set variable    YES

    #below both variable and value are present in single quote because the value present in variable is string and we are comparing string with string, if the value present in the variable was number then there would not be need of single quote
    run keyword if    '${run_key1}'=='YES'    log to console    value was found
    run keyword if    '${run_key1}'=='NO'    log to console    value was not found