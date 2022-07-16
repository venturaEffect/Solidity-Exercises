// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ForLoop2 {
    uint[] myArray;

    function addArray(uint number) external {
        for(uint i = 0; i < number; i++) {
            if(i == 3) {
                continue;
            } else if (i == 8) {
                break;
            } else {
                myArray.push(i);
            }
        }
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }
}
