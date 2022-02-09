*** Keywords ***
Collatz Iteration
    [Documentation]    If x is even, divide by 2. If x is odd, multply by 3 and add 1.
    [Arguments]    ${x}
    IF    ${x}%2==0
        ${x}=    evaluate    ${x}//2
    ELSE
        ${x}=    evaluate    ${x}*3+1
    END
    [Return]    ${x}


Collatz Conjecture
    [Documentation]
    [Arguments]    ${x}
    FOR    ${_}    IN RANGE    999
        ${x}=    collatz iteration     ${x}
        EXIT FOR LOOP IF    ${x}==1
        log to console    ${x}
    END
    [Return]    ${x}

Fibonacci
    [Arguments]    ${n}
    ${f-2}    set variable    0
    ${f-1}    set variable    1
    FOR    ${_}    IN RANGE    ${n}-1
        ${f}=    evaluate    ${f-2}+${f-1}
        ${f-2}=    set variable    ${f-1}
        ${f-1}=    set variable    ${f}
        log to console    ${f}
    END
    [Return]    ${f}

*** Test Cases ***
Test Fibonacci
    ${x}=    Fibonacci     10
    SHOULD BE EQUAL AS INTEGERS    ${x}    55

Test that Collatz Conjecture works for numbers 1 to 100
    ${x}=    Collatz Conjecture    72
    log to console    ${x}


