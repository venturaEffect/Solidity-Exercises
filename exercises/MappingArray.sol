// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MappingExercise {
    mapping(uint => string[]) myMapping;

    function addArray1(uint myKey, string memory word1, string memory word2) external {
        myMapping[myKey] = [word1, word2];
    }

    string[] myArray = ["daisy", "carnation"];

    function addArray2(uint myKey2) external {
        myMapping[myKey2] = myArray;
    }

    function getMapping(uint myKey3) external view returns(string[] memory) {
        return myMapping[myKey3];
    }
}
