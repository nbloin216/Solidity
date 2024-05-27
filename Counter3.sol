// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract Counter3{

    address owner;
    bool paused;
    uint count;
    mapping (address => uint) counts;

    error NotOwner();
    error ContractPaused();

    constructor(){
        owner = msg.sender;
    }
 modifier onlyOwner(){
        if (msg.sender != owner){
            revert NotOwner();
        }
        _;
    }

    modifier notPaused(){
        if (paused == true){
            revert ContractPaused();
        }
        _;
    }

  function pause() public onlyOwner{
    paused = true;
  }

    function unpause() public onlyOwner{
        paused = false;
    }


    function getCount() public view returns (uint){
        return counts [msg.sender];
    }

    function inc() public {
        counts[msg.sender] += 1;
    }

    function dec() public{
        counts[msg.sender] -= 1;
    }
}
