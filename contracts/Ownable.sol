//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract Ownable{
    address owner;
    modifier onlyowner
    {
        require(msg.sender == owner, "only owner can process transactions");
        _;
    }
}