// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Con {
    function check (int a) public pure returns(string memory) {
        string memory value;
        if (a > 0) {
            value = "Greater Than Zero";
        } else if (a == 0) {
            value = "Equal To Zero";
        } else {
            value = "Less Than Zero";
        }
        return value;
    }
}