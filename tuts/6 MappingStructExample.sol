// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract MappingStructExample {
    mapping(address => uint) public balanceReceived;

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney (address payable __to, uint __ammout) public {
        require(balanceReceived[msg.sender] >= __ammout, "not enough funds");
        balanceReceived[msg.sender] -= __ammout;
        __to.transfer(__ammout);
    }

    function withdrawAllMoney(address payable __to) public {
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        // __to.transfer(address(this).balance);
        __to.transfer(balanceToSend);
    }
}