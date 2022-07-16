// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayExercise {
   uint[3] myArray1; 
   uint[] myArray2 = new uint[] (3);

   function setValues() external {
       myArray2 = [55, 66, 88];
   }

   function getValues() public view returns (uint[] memory) {
       return myArray2;
   }

   function updateValue() external {
       myArray2[2] = 77;
   }
}
