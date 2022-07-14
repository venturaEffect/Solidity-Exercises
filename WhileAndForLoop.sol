// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract WhileAndForLoop {

    uint[] myArray1;

    uint[] myArray2;

    uint myNumber = 0;
    function addArray1() external {
        while(myNumber < 10 ) {
            myArray1.push(myNumber);
            myNumber++;
        }
    }

    function addArray2() external {
        for(uint i = 0; i < 10; i++) {
            myArray2.push(i);
        }
    }

    function getArray1() external view returns(uint[]) {
        return myArray1;
    }

    function getArray2() external view returns(uint[]) {
        return myArray2;
    }
}