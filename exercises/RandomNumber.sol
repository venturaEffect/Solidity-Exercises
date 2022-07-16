// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract RandomNumber {

    uint myNumber = 0;

    function setNumber() external {
        myNumber = uint(keccak256(abi.encodePacked(msg.sender, block.timestamp, myNumber))) % 100;
    }

    function getNumber() external view returns(uint) {
        return myNumber;
    }

}
