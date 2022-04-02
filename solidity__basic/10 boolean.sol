// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract boolean {
    bool public value = true;
    bool public value2 = false;

    function check (uint a) public returns (bool) {
        if (a > 100) {
            value = true;
        } else {
            value = false;
        }
        return value;
    }
}