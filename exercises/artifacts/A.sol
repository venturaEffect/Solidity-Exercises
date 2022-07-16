// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract A {
    string public myWord = "Schwan";

    function changeWord() external {
        myWord = "Mencce";
    }
}