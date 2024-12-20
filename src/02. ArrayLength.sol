// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./Interfaces.sol";

contract ArrayLength is IArrayLength {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() public view {
        for (uint256 i; i < myArray.length; i++) {
            i++;
        }
    }
}

contract ArrayLengthOptimized is IArrayLength {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() public view {
        uint256 len = myArray.length;
        for (uint256 i = 0; i < len; i += 2) {
            // Loop body is intentionally left empty
            // since the original function doesn't perform any operations
        }
    }
}
