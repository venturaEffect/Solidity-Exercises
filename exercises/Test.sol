// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Test {
    // ORDER THE ARRAY FROM SMALL TO BIG BY USING FOR LOOP
    uint[] myArray = [25, 66, 12, 3, 9, 0];

    function orderArray() external {
        for(uint a = 0; a < myArray.length-1; a++) {
            for(uint i = 0; i < myArray.length-1; i++) {
                if(myArray[i] > myArray[i + 1]) {
                    uint temp = myArray[i];
                    myArray[i] = myArray[i+1];
                    myArray[i+1] = temp;
                }
            }
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}