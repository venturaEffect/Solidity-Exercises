// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayTest {
    string[] myArray = ["flower", "rose", "tulip"];

    function updateEl1(string memory myWord) external {
        myArray[1] = myWord;
    }

    function getValues() external view returns (string[] memory) {
        return myArray;
    }
}