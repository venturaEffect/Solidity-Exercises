// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayDelete {

    uint[] myArray = [10, 11, 12, 13, 14, 15];

    function remOrdered() external {
        for(uint i = 2; i < myArray.length-1; i++) {
            myArray[i] = myArray[i+1];
        }
        myArray.pop();
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }
}
