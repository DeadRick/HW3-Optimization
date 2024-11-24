// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "src/03. CalldataMemory.sol";

// forge test --match-contract CalldataMemory
// forge test --match-contract CalldataMemory --gas-report
contract CalldataMemoryTest is Test {
    CalldataMemory calldataMemory;
    uint256[] arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function setUp() public {
        calldataMemory = new CalldataMemory();
    }

    function test_Call() public view {
        calldataMemory.add(arr);
    }
}

// forge test --match-contract CalldataMemoryOptimizedTest
// forge test --match-contract CalldataMemoryOptimizedTest --gas-report
contract CalldataMemoryOptimizedTest is Test {
    CalldataMemoryOptimized calldataMemoryOptimized;
    uint256[] arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function setUp() public {
        calldataMemoryOptimized = new CalldataMemoryOptimized();
    }

    function test_Call() public view {
        calldataMemoryOptimized.add(arr);
    }
}