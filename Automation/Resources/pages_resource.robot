*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    DateTime
Resource   common_resource.robot

*** Keywords ***
Validate the searching page contains time stamp greater than
    [Arguments]     ${page_name}    ${page_time_stamp}
    create session    mysession     ${base_url}
    ${response}=    get request    mysession        ${releative_url_page_details_prefix}${page_name}${releative_url_page_details_suffix}
    ${timestamp}    set variable    ${response.json()}[latest][timestamp]
    ${datetime1}=    Convert Date    ${timestamp}
    ${datetime2}=    Convert Date    ${page_time_stamp}
    ${date_same}=    Evaluate    '${datetime1}' > '${datetime2}'
    should be true    ${date_same}      expected date is smaller than actual
