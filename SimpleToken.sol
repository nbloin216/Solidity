// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract SimpleToken {
    address owner;
    mapping (address => uint) public  balances;


    error NotOwner();
    event Sent (address from, address to, uint amount);

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        if (msg.sender != owner){
            revert NotOwner();
            
        }
        _;
    }
    
    function mint(address receiver, uint amount) public onlyOwner {
        balances[receiver] = amount;
    }

    function send(address receiver, uint amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
