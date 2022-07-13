// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Parameter {
    string public myWord = "rose";

    function changeName(string memory _myWord) external {
        myWord = _myWord;
    }
}