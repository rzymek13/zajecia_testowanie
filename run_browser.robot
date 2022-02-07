*** Settings ***
Library    SeleniumLibrary
*** Variables ***
@{list_of_browsers}    chrome    firefox
${url}    http://www.google.com

*** Test Cases ***
Run Browser
    FOR  ${i}  IN  @{list_of_browsers}
    open browser  ${url}   ${i}
    close browser
    END
