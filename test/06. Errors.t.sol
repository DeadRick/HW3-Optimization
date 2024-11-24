// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "src/06. Errors.sol";

// forge test --match-contract Errors
// forge test --match-contract Errors --gas-report
contract ErrorsTest is Test {
    Errors errors;

    function setUp() public {
        errors = new Errors();
    }

    function test_call() public {
        vm.startPrank(address(0x01));
        vm.expectRevert();
        errors.call();
        vm.stopPrank();
    }
}

// forge test --match-contract ErrorsOptimized
// forge test --match-contract ErrorsOptimized --gas-report
contract ErrorsOptimizedTest is Test {
    ErrorsOptimized errorsOptimized;

    function setUp() public {
        errorsOptimized = new ErrorsOptimized();
    }

    function test_call() public {
        vm.startPrank(address(0x01));
        vm.expectRevert(ErrorsOptimized.NotOwner.selector);
        errorsOptimized.call();
        vm.stopPrank();
    }
}