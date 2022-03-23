// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract startStopUpdateEther {
    address owner;
    bool public paused;

    constructor () public {
        owner = msg.sender;
    }

    function sendMoney() public payable {

    }

    function setPaused(bool __paused) public {
        require(msg.sender == owner, "You Are Not The Owner");
        paused = __paused;
    }

    function withdrawAllMoney (address payable __to) public {
        require(msg.sender == owner, "You Are Not The Owner");
        require(!paused, "Contract is paused");
        __to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable __to) public {
        require(msg.sender == owner, "You are Not The Owner");
        selfdestruct(__to);
    }
}