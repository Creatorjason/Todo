//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Todo{
    struct Task{
        string task;
        bool finished;
    }
    Task[] public todos;
    function create(string calldata _text) external {
        todos.push(Task(_text, false));
    }
    function updateTask(uint _index, string calldata _text) external {
        Task storage niew = todos[_index];
        niew.task = _text; 
    }
    function getter(uint _index) external view returns(Task memory i){
        return todos[_index];
    }
    function completed(uint _index) external{
        Task storage com = todos[_index];
        com.finished = !com.finished;
    }
}
