// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Local {
    uint age = 10;

    function getter () public view returns (uint) {
        return age;
    }

    function setter (uint increaseAge) public {
        age += increaseAge;
    }

    function usePure () public pure returns (uint) {
        uint roll = 100;
        return roll;
    }

    // view VS pure
    // view is used to read only state variables
    // pure is used where state variable is not modify and read
}