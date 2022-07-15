// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayDeleteOperations {

    uint[] myArray = [10, 11, 12, 13, 14, 15];

    function remDelete() external {
        delete myArray[2];
    }

    function remPop() external {
        myArray.pop();
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }
}