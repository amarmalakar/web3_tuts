// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Cariables {
    uint256 public myUnit;

    function setMyUint (uint256 __myUint) public {
        myUnit = __myUint;
    }

    // Booleans
    bool public isUser;
    function setIsUser (bool __isUser) public {
        isUser = __isUser;
    }

    // increament and decreament
    uint8 public num = 5;
    function inc () public {
        num++;
    }
    function dec () public {
        num--;
    }

    // address variables
    address public myAddress;
    function setAddress (address __myAddress) public {
        myAddress = __myAddress;
    }
    // get balance of address
    function getAddressBalance () public view returns (uint) {
        return myAddress.balance;
    }
}