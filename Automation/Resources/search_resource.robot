*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    DateTime
Resource   common_resource.robot

*** Keywords ***
Search for pages containings
    [Arguments]    ${page_name}
    create session    mysession     ${base_url}
    ${response}=    get request    mysession    ${relative_url_page_search}+${page_name}
    validate status code    200   ${response}
    ${response_body}    set variable    ${response.json()}[pages]
    Set Suite Variable    ${response_body}

Find Page with the title
    [Arguments]    ${page_title}
    FOR    ${item}    IN    @{response_body}
        exit for loop if    "${item}[title]" == "${page_title}"
    END
    Should be equal as strings    "${item}[title]"    "${page_title}"
