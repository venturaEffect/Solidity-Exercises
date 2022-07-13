// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StructTest {
    struct Flowers {
        string name;
        uint price;
        string color;
    }

    Flowers public myVar1 = Flowers("tulip", 5, "blue");
    Flowers public myVar2 = Flowers("rose", 7, "red");
}