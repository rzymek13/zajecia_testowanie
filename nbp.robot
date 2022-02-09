*** Settings ***
Library    RequestsLibrary
*** Test Cases ***
Ilosc zarequestowanych notowan zgadza sie z odpowiedzia
    ${response}=    GET    https://api.nbp.pl/api/exchangerates/rates/a/eur/last/5
    ${rate_count}=    get length    ${response.json()["rates"]}
    SHOULD BE EQUAL AS INTEGERS    ${rate_count}    5