// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FixedSizeMEmory {

    function createArray(uint a, uint b, uint c) external pure returns(uint[3] memory) {
        uint[3] memory myArray = [a, b, c];
        return myArray;
    }
}
