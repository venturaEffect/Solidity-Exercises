// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

// DELEGATECALL - ABI.ENCODEWITHSIGNATURE

contract G {

    function foo(address otherContract, string memory x) external {
        (bool success, ) = otherContract.delegatecall(abi.encodeWithSignature("changeWord(string)", x));
        require(success, "Delegatecall failed");
    }

    // The state of G does not change.
    // The state of A changes.
    // Import statement not used.
    
}