// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayNew {
    bytes32[] myArray;

    function setValues() external {
        myArray = [bytes32 ("apple"), bytes32 ("oranges")];
    }

    function addValue() external {
        myArray.push(bytes32("strawberry"));
    }

    function getValues() external view returns(bytes32[] memory) {
        return myArray;
    }
}
