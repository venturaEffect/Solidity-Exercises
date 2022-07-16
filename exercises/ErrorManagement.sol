// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ErrorManagement {
    /*
    REQUIRE:
    -used for funtion related conditions.
    -if false, remaning gas returned.
    -if false reverts all changes made to the contract.

    ASSERT:
    -used for tests.
    -if false consumes all remaning gas.
    -if false reverts all changes made to the contract.

    IF STATEMENT:
    -used for function related conditions.
    -all gas will be consumed. There is no "False". If first condition is not met, 
    it will move to next code line to execute.
    -as there is no "False", it doesn't revert.

    IF STATEMENT & REVERT:
    -used for function related conditions.
    -if "reverts", remaning gas returned.
    -as there is no "False", it doesn't revert.

    GAS COST:
    Condition is True : assert -require - if -if&revert
    Condition is False : require - assert - if -if&revert
    */

    uint a = 5;

    function foo1(uint b) external {
        require(b>3, "b is small");
        a = a+b;
    }

    function foo2(uint b) external {
        assert(b>3);
        a = a+b;
    }

    function foo3(uint b) external {
        if(b>3) {
            a = a+b;
        }
    }

    function foo4(uint b) external {
        if(b>3) {
            a = a+b;
        } else {
            revert("b is small");
        }
    }
}