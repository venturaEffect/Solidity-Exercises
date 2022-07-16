// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StructExercise {
    struct Numbers {
        uint a;
        uint b;
    }

    Numbers myPoints;

    function serValues(uint _a, uint _b) external {
        myPoints = Numbers(_a, _b);
    }

    function addValues() external view returns(uint) {
        return myPoints.a + myPoints.b;
    }

    function getStruct() external view returns(Numbers memory) {
        return myPoints;
    }
}
