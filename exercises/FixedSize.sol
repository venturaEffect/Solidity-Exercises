// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FixedSize {
    uint[3] myArray;

    function addArray1() external {
        myArray = [11, 22, 33];
    }

    function addArray2(uint a, uint b, uint c) external {
        myArray[0] = a;
        myArray[1] = b;
        myArray[2] = c;
    }

    function delArray() external {
        delete myArray[1];
    }

    function getArray() external view returns(uint[3] memory) {
        return myArray;
    }
}
