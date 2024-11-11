*** Settings ***
Resource    ../../base.resource

*** Keywords ***
JSONPlaceholder Session

    ${alias}  Set Variable  JSONPlaceholder

    Create Session
    ...  alias=${alias}
    ...  url=https://jsonplaceholder.typicode.com/
    ...  verify=${False}
    ...  disable_warnings=${True}
    
    RETURN  ${alias}