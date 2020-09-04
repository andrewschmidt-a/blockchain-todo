pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; 

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor () public {
        createTask("Learn how to use app");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
    function toggleCompleted(uint taskId) public {
        tasks[taskId].completed = !tasks[taskId].completed;
    }
}