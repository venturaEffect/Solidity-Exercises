// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StructArray {

    struct Cities {
        uint id;
        string name;
    }

    Cities myCity1 = Cities(1, "Windhoek");

    Cities[] myArray;

    function addArray1() external {
        myArray.push(myCity1);
    }

    function addArray2() external {
        myArray.push(Cities(2, "Cape Town"));
    }

    function getArray() external view returns(Cities[] memory) {
        return myArray;
    }
}