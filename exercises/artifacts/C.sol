// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

interface IA {
    function changeWord() external;
    function myWord() external view returns(string memory);
}

contract C {
    function call1(address otherContract) external view returns(string memory) {
        return IA(otherContract).myWord();
    }

    function call2(address otherContract) external  {
        IA(otherContract).changeWord();
    }
}