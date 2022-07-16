// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayInArray {
    // way 1
    string[][] public bigArray;
    string[] smallArray1 = ["ab", "xy"];
    string[] smallArray2 = ["iceland", "namibia"];

    function addArray() external {
        bigArray.push(smallArray1);
        bigArray.push(smallArray2);
    }

    function getArray() external view returns(string[][] memory) {
        return bigArray;
    }

    //way 2
    string[][] bigArray2;
    function addArray2(string[] memory x) external {
        bigArray2.push(x);
    }

    function getArray2() external view returns(string[][] memory) {
        return bigArray2;
    }
}
