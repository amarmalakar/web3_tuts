// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.5.0;

// after using 0.8.0 version here this problem is solved.
// pragma solidity 0.8.0;

contract integer_overflow_error {
    uint8 public money = 255;

    function setter() public {
        money += 1; // it becomes 0 it is an error
    }
}