// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract todolist{
    struct todoItem{
        string todotext;
        bool done;
    }

    todoItem[] public todosArr;

    function addNewTodo(string calldata _text) external{
        todosArr.push( todoItem({
            todotext: _text,
            done:false
        }));

    }

    function updateIndex (uint _index , string calldata _text) external {
        todosArr[_index].todotext = _text;
    }

    function deleteTodo(uint _index) external{
        require (_index < todosArr.length,"index not in array");

        for(uint i = _index; i < todosArr.length - 1; i++){
            todosArr[i] = todosArr[i+1];
        }

        todosArr.pop();

    }
    function toggleDone(uint _index) external {
        todosArr[_index].done = !todosArr[_index].done;
    }


}