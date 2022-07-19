// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract A {
    string public myWord = "Mardin";

    function changeWord(string memory a) external {
        myWord = a;
    }
}