// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ConstructorModifier {
    constructor(uint x) {
        a = x;
    }

    uint a = 5;

    function foo() external view returns(uint) {
        return a + 10;
    }
}