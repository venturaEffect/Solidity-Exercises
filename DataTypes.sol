// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract DataTypes {
    uint public number1 = 52;
    int public number2 = -63;
    uint8 public number3 = 253;
    bool public isTrue = false;
    address public myAccount = msg.sender;
    string public word1 = "Hello World";
    bytes32 public word2 = "Hello World";
}