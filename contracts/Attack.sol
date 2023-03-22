// //SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8;
contract attack{
    address payable owner;
    constructor (){
        owner = payable(msg.sender);

    }
    function kill () public {
        selfdestruct (owner);
    }
}