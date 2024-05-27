// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract FuctionModifiers{

    address owner;
    uint aNumber;

    constructor(){
        owner = msg.sender;
        
    }

    modifier onlyOwner(){
        require(owner == msg.sender, "Not owner");
        _; // seguir con el codigo de setNumber
        require (aNumber == 1, "Not one");
    }

    function setNumber (uint anotherNumber) public onlyOwner{
        aNumber = anotherNumber;
    }


}
