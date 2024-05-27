// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract Mappings {


    //Mapping
    //0xAb8 -> 300
    //0x0f -> 7

    mapping (address => uint) public myMapping;

    function setMyMapping(uint aNumber) public {
        myMapping[msg.sender] = aNumber;
    }
    
    function getMyMapping () public view returns (uint){
        return myMapping[msg.sender];
    }
}

