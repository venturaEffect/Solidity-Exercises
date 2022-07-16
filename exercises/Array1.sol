// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Array1 {
    uint[4] data;

    function setArrayValues() public {
        data = [12, 85, 4, 632489];
    }

    function getArrayValues() public view returns(uint[4] memory) {
        return data;
    }
}
