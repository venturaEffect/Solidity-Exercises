// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

// DELEGATECALL - ABI.ENCODEWITHSELECTOR
import "./A.sol";

contract H {

    function foo(address otherContract, string memory x) external {
        (bool success, ) = otherContract.delegatecall(abi.encodeWithSelector(A.changeWord.selector, x));
        require(success, "delegate call failed");
    }

    // The state of H changes
    // The state of A does not change
    // Import is used
    // It is cheaper than signature
    
}