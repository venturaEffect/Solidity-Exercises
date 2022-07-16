// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StructTest {

    struct Cars {
        string brand;
        uint price;
        string color;
    }

    Cars myCar1 = Cars("Peugeot", 2000, "yellow");
    Cars myCar2 = Cars("Volkswagen", 2500, "brown");

    function updateColor(string memory _color) external {
        myCar1.color = _color;
    }

    function getCar() external view returns(Cars memory) {
        return myCar1;
    }
}
