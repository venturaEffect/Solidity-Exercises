// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract WriteFunction {
    uint public myNumber = 777;

    function setMyNumber() public {
        myNumber = 90;
    }
}