// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Array {
    // Dynamic Array
    uint[] public dynamicArr;

    function pushElement(uint item) public {
        dynamicArr.push(item);
    }

    function length() public view returns(uint) {
        return dynamicArr.length;
    }

    function popElement() public {
        dynamicArr.pop();
    }
}