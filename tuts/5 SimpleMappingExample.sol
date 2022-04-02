// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract SimpleMappingExample {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;

    function setValue(uint __index) public {
        myMapping[__index] = true;
    }

    function setMyAddressToTrue () public {
        myAddressMapping[msg.sender] = true;
    }
}