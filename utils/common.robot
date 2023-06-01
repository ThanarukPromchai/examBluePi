***Keywords***

Open Browser To Do List
    Open Browser                            ${urlToDoList}     Chrome           
    # options=add_experimental_option("detach", True)

Get Task Item Index By Name
    [Arguments]                             ${toDoName}
    ${index}                                Get Element Attribute         ${PATH_TASK_LIST}/li/label/span[text()="${toDoName}"]//parent::label                 for
    [Return]                                ${index}                 

Get Task Item Completed By Name
    [Arguments]                             ${toDoName}
    ${index}                                Get Element Attribute         ${PATH_COMPLETE_LIST}/li/span[text()="${toDoName}"]//following-sibling::button       id
    [Return]                                ${index}     

Switch Tab
    [Arguments]                             ${tab}
    Click Element                           ${tab}   
    Sleep                                   0.5s    

Add Task Item ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_ADD_ITEM}
    Input Text                              ${PATH_INPUT_TODOLIST_NAME}              ${toDoName}
    Click Element                           ${PATH_BUTTOM_ADD_TODOLIST}

Verify Task Item ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_TO_DO_TASK}
    ${Index}=                               Get Task Item Index By Name              ${toDoName}
    Wait Until Element Is Visible           ${PATH_TASK_LIST}/li/label[@for="${Index}"]

Check Task Item ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_TO_DO_TASK}
    ${Index}=                               Get Task Item Index By Name              ${toDoName}
    Click Element                           ${PATH_TASK_LIST}/li/label[@for="${Index}"]

Delete Task Item ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_TO_DO_TASK}
    ${Index}=                               Get Task Item Index By Name              ${toDoName}
    Click Element                           ${PATH_TASK_LIST}/li/button[@id="${Index}"]

Verify Task Completed ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_COMPLETED}
    Wait Until Element Is Visible           ${PATH_COMPLETE_LIST}/li/span[text()="${toDoName}"]

Delete Task Complete ToDoList
    [Arguments]                             ${toDoName}
    Switch Tab                              ${TAB_COMPLETED}
    ${Index}=                               Get Task Item Completed By Name           ${toDoName}
    Click Element                           ${PATH_COMPLETE_LIST}/li/span[text()="${toDoName}"]//following-sibling::button