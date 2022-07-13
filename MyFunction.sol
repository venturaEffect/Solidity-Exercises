// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract MyFunction {
    string public fruitName = "orange";
    
    function getFruitName() public view returns(string memory) {
        return fruitName;
    }
}