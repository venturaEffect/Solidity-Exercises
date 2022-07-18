// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract PayableSummary {
    //DEPOSIT CALLER ADDRESS ---> CONTRACT ACCOUNT
    constructor() payable {}

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

    /*

    function foo() external payable{}

    fallback() external payable{}

    receive() external payable{}

    // TRANSFER: CALLER ADDRESS --> ADDRESS
    function bazz(address payable _to) external payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "transaction failed");
    }


    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

 
    receive: msg.data must be empty
    fallback: doesn't care about msg.data
    */
}