// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract State {
    uint public age; // state variables
    uint public num; // state variables

    function setAge() public {
        age = 10;
        num = 20;
    }

    function store() pure public returns (uint) {
        uint localAge; // local variables
        localAge = 25;
        string memory localName = "name";
        return localAge;
    }
}