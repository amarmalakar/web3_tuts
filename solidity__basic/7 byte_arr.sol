// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract byteArr {
    // Byte Array
    bytes3 public b3;
    bytes2 public b2;

    function setter() public {
        b3 = "abc";
        b2 = "ab";
    }

    // Bytes[] Array
    bytes public b1 = "abc";

    function pushElement () public {
        b1.push('d');
    }

    function pushElement (uint i) public view returns (bytes1) {
        return b1[i];
    }

    function getLength() public view returns (uint) {
        return b1.length;
    }
}