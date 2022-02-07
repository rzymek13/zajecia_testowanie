*** Settings ***
Resource    operations.robot

*** Test Cases ***
123

    ${x}=    Add 5 To   6
    log to console    ${x}