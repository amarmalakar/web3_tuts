// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Struct_Data_Types {
    struct Student {
        uint roll;
        string name;
    }

    Student public s1;

    constructor (uint _roll, string memory _name) public {
        s1.roll = _roll;
        s1.name = _name;
    }

    function change(uint _roll, string memory _name) public {
        Student memory new_student = Student ({
            roll: _roll,
            name: _name
        });

        s1 = new_student;
    }
}