// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract storage_vs_memory {
    string[] public student = ['Ravi', 'Rita', 'Aman'];

    function mem() public view {
        string[] memory s1 = student;
        s1[0] = 'Akash';
    }

    function sto() public {
        string[] storage s1 = student;
        s1[0] = 'Akash';
    }
}