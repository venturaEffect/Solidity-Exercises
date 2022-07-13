// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract TestArray {
    string[] myArray;

    function addValue(string memory myWord) external {
        myArray.push(myWord);
    }

    function getValues() external view returns(string[] memory) {
        return myArray;
    }
}