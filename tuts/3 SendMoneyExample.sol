// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract SendMoney {
    uint public balanceReceived;

    function receivedBalance () public payable {
        balanceReceived += msg.value;
    }

    // get balanace
    function getBalance () public view returns (uint) {
        return address(this).balance;
    }

    function withdrawMoney () public {
        address payable to = payable(msg.sender);
        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable __to) public {
        __to.transfer(this.getBalance());
    }
}