// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MappingExercise {
    mapping(uint => string) myMapping;

    uint[] myArray;

    function addMapping(uint myKey, string memory myValue) external {
        myMapping[myKey] = myValue;
    }

    function addArray(uint myNumber) external {
        myArray.push(myNumber);
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }

    function getMapping(uint myKey2) external view returns(string memory) {
        return myMapping[myKey2];
    }
}
