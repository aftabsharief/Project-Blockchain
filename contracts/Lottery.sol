//SPDX-License-Identifier: Unlicenced
pragma solidity ^0.8.0;

contract lottery {
    address public manager;
    address payable[] public Participants;

    constructor() {
        manager = msg.sender;
    }

    receive () external payable {
        require(msg.value == 0.1 ether);
        Participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        require(msg.sender == manager, "You are not the manager");
        return address(this).balance;
    }
    function random() private view returns (uint) {
    return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
    }
    function selectwinner () public view returns (address){
        uint len = Participants.length;
        require (msg.sender == manager, "You are not the manager");
        return Participants[random()%len];

    }
}
