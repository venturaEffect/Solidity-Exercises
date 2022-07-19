// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.7;

contract EnumExample {

    enum Hamburgers {CHILDREN, SMALL, MEDIUM, BIG}

    Hamburgers public myChoice;

    function setValue1() external {
        myChoice = Hamburgers.MEDIUM;
    }

    function setValue2() external {
        myChoice = Hamburgers(2);
    }

    function getValue1() external view returns(Hamburgers) {
        return myChoice;
    }

    function getEnum1() external pure returns(Hamburgers) {
        return Hamburgers(0);
    }

    function getEnum2() external pure returns(Hamburgers) {
        return Hamburgers.CHILDREN;
    }

    function getEnum3() external view returns(uint) {
        return uint(myChoice) + 5;
    }

    Hamburgers[] public myArray = [Hamburgers(1), Hamburgers.BIG];

}

/* ENUMS
1. Enum values, the look like "uint8"

2. You cannot use public or other tabs on ENum lists.

3. But you can use public or other tags on Enum variables.

4. You cannot iterate an Enum list: no for loop, no while loop, no ".length"

5. You cannot store address, bool, uint, int or string in an Enum list.

6. You cannot store Enum values in a uint array.

7. But you can store Enum values in an Enum array.

8. An Enum variable can have only one Enum value.

9. An Enum list needs to have at least one value.

10. Enum lists are not Arrays. You cannot update an Enum list.

11. Enum lists can be declared outside of a contract.
*/