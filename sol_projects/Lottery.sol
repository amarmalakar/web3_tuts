// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor () {
        manager = msg.sender;
    }

    // receive is a special type of function used to transfer ether to contract 
    // and it defined only one time in a contract
    receive() external payable {
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint) {
        require(msg.sender == manager);
        return address(this).balance;
    }

    function random() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    function selectWinner() public {
        require(msg.sender == manager);
        require(participants.length >= 3);

        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        // now transfer ether to winner
        winner.transfer(getBalance());

        // reset participants
        participants = new address payable[](0);
    }
}