// SPD-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ForLoops {
    // Find the sum of the arrays
    function getSum(uint[] memory myArray1) external pure returns(uint) {
        uint myNumber = 0;
        for(uint i = 0; i < myArray1.length; i++) {
            myNumber += myArray1[i];
        }
        return myNumber;
    }

    // Find the index number of any element
    uint[] myArray2 = [1, 2, 3, 8, 7, 9];

    function findIndex(uint x) external view returns(uint) {
        for(uint i = 0; i < myArray2.length; i++) {
            if(myArray2[i] == x) {
                return i;
            }
        }
    }

    // Find the biggest number in the array
    uint[] myArray3 = [78, 85, 95, 65, 45, 2112];

    function findBig() external view returns(uint) {
        uint bigNumber = 0;
        for(uint i = 0; i < myArray3.length; i++) {
            bigNumber > myArray3[i] ? bigNumber : bigNumber = myArray3[i];
        }
        return bigNumber;
    }

    // Create an array of even numbers
    uint[] myArray4;

    function addValues(uint y) external {
        for(uint i = 0; i < y; i++) {
            if(i % 2 == 0) {
                myArray4.push(i);
            }
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray4;
    }

}
