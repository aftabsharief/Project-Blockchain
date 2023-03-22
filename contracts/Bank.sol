
//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "./Ownable.sol";

contract bank is Ownable {
    // uint balance;
    address public bankAddr;
    mapping(address => uint256) public BankCuList;

    function Deposit() public payable returns (uint256) {
        require(
            msg.sender.balance >= msg.value,
            "you dont have sufficient balance to Deposit in bank contract"
        );
        BankCuList[msg.sender] += msg.value;
        return BankCuList[msg.sender];
    }

    function getbalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdr(uint256 _amount) public onlyowner {
        require(
            msg.sender.balance >= _amount,
            "you dont have sufficient balance to Withdraw from bank contract"
        );
        BankCuList[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}

