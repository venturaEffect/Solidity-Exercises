// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayContract {
    string[] myArray;

    function setValues() external {
        myArray = ["flower", "rose", "tulip", "goat"];
    }

    function getValues() external view returns (string[] memory) {
        return myArray;
    }
}
