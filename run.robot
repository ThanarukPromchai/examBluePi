***Settings***

Resource                                    libs//init.robot

***Test Cases***

Open Webpage
    Open Browser To Do List

Add Task To Do EN Case
    Add Task Item ToDoList                      Test1
    Verify Task Item ToDoList                   Test1

Add Task To Do TH Case
    Add Task Item ToDoList                      ทดสอบ1
    Verify Task Item ToDoList                   ทดสอบ1

Delete Task To Do Case
    Add Task Item ToDoList                      Test2
    Verify Task Item ToDoList                   Test2
    Delete Task Item ToDoList                   Test2

Check Task To Do Case
    Add Task Item ToDoList                      Test3
    Verify Task Item ToDoList                   Test3
    Check Task Item ToDoList                    Test3
    Verify Task Completed ToDoList              Test3

Delete Task Completed To Do Case
    Add Task Item ToDoList                      Test4
    Verify Task Item ToDoList                   Test4
    Check Task Item ToDoList                    Test4
    Verify Task Completed ToDoList              Test4
    Delete Task Complete ToDoList               Test4