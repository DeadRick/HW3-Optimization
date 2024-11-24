// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "src/07. Swap.sol";

// forge test --match-contract Swap
// forge test --match-contract Swap --gas-report
contract SwapTest is Test {
    Swap swap;

    function setUp() public {
        swap = new Swap();
    }

    function test_swap() public view {
        (uint256 a, uint256 b) = swap.swap(300, 200);
        assertEq(a, 200);
        assertEq(b, 300);
    }
}

contract SwapOptimizedTest is Test {
    SwapOptimized swapOptimized;

    function setUp() public {
        swapOptimized = new SwapOptimized();
    }

    function test_swapOptimized() public {
        (uint256 a, uint256 b) = swapOptimized.swap(300, 200);
        assertEq(a, 200);
        assertEq(b, 300);
    }
}