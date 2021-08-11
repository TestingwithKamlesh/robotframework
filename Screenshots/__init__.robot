*** Settings ***
Library    SeleniumLibrary
Suite Setup    suite started
Suite Teardown    suite stopped

*** Variables ***

*** Keywords ***
suite started
    log    setup has started

suite stopped
    log    setup has teared down