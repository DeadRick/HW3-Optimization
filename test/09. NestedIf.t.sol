// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "src/09. NestedIf.sol";

// forge test --match-contract NestedIf
// forge test --match-contract NestedIf --gas-report
contract NestedIfTest is Test {
    NestedIf nestedIf;

    function setUp() public {
        nestedIf = new NestedIf();
    }

    function test_call() public view {
        nestedIf.call(101);
        nestedIf.call(50);
        nestedIf.call(44);
        nestedIf.call(69);
    }
}

contract NestedIfOptimizedTest is Test {
    NestedIfOptimized nestedIfOptimized;

    function setUp() public {
        nestedIfOptimized = new NestedIfOptimized();
    }

    function test_call() public {
        assertFalse(nestedIfOptimized.call(101), "false");
        assertFalse(nestedIfOptimized.call(50), "false");
        assertTrue(nestedIfOptimized.call(44), "true");
        assertTrue(nestedIfOptimized.call(69), "true");
    }


}