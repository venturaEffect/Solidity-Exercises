// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayContract2 {
    string[] myArray;

    function setValues() external {
        myArray = ["flower", "rose"];
    }

    function addValue() external {
        myArray.push("sunflower");
    }

    function getValues() external view returns(string[] memory) {
        return myArray;
    }
 }