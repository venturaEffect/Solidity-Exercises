// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ModifierTest{
    /*
    modifier
    -- it can pack together require functions
    -- it can add more execution to before and after the function
    */

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the owner of the contract");
        _;
    }

    uint public a = 5;

    function addNumber() external onlyOwner {
        a+=4;
    }
}