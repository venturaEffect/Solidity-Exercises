// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Helloworld {
    string public hw = "Hello World";

    function changingVariable(string calldata _hw) external {
        hw = _hw;
    }
}
