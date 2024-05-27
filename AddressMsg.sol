// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract AddressMsg {
    address public  user;

    constructor(){

    user = msg.sender; //msg palabra clave para saber informacion de la blockachin en su estado actual (ejecucion en curso) y tiene informacion den sender (quien deploy el contrat)
    }

    function setUser() public {
        user = msg.sender;
    }

    function getUser() public view returns(address){
        return  user;
    }



}
