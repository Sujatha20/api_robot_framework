*** Settings ***
Resource    ../Resource/common_resource.robot
Resource    ../Resource/pages_resource.robot
Resource    ../Resource/search_resource.robot

*** Test Cases ***
Search for the page and validate the title
    Search for pages containings    furry rabbits
    Find Page with the title        Sesame Street

The result for page contains title and validate the time stamp
    Search for pages containings    furry rabbits
    Find Page with the title        Sesame Street
    Validate the searching page contains time stamp greater than     Sesame      2023-08-17