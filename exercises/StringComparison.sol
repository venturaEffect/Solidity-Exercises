// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StringComparison {

    function compare1(string memory _word) external pure returns(string memory) {
        if(keccak256(bytes(_word)) == keccak256(bytes("hello"))) {
            return "rigth word";
        } else {
            return "wrong word";
        }
    }

    // alternative with abi.encodePacked(arg);
    function compare2(string memory _word) external pure returns(string memory) {
        if(keccak256(abi.encodePacked(_word)) == keccak256(abi.encodePacked("hello"))) {
            return "rigth word";
        } else {
            return "wrong word";
        }
    }
}
