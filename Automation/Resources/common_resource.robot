*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    DateTime

*** Variables ***
${base_url}             https://api.wikimedia.org
${relative_url_page_search}        /core/v1/wikipedia/en/search/page?q=
${releative_url_page_details_prefix}     /core/v1/wikipedia/en/page/
${releative_url_page_details_suffix}    /bare
${response_body}            # Declare ${response} as a suite variable

*** Keywords ***

validate status code
    [Arguments]    ${status_code}   ${response}
    Status Should Be    ${status_code}    ${response}







