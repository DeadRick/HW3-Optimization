// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "src/02. ArrayLength.sol";

// forge test --match-contract ArrayLength
// forge test --match-contract ArrayLength --gas-report
contract ArrayLengthsTest is Test {
    ArrayLength arrayLength;

    function setUp() public {
        arrayLength = new ArrayLength();
    }

    function test_Call() public view {
        arrayLength.callFor();
    }
}

// forge test --match-contract ArrayLengthOptimizedTest
// forge test --match-contract ArrayLengthOptimizedTest --gas-report
contract ArrayLengthOptimizedTest is Test {
    ArrayLengthOptimized arrayLengthOptimized;

    function setUp() public {
        arrayLengthOptimized = new ArrayLengthOptimized();
    }

    function test_Call() public view {
        arrayLengthOptimized.callFor();
    }
}