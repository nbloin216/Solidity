// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Counter{

    uint public count;

    //incrementar/decrementar  variable 

    function get() public view returns(uint) {
    return count;
    }

    //Cuesta gas si otro contrato interactua con get como parte de una transaccion que modifica el estado de la blockchain
   
    function inc() public {
        count = count + 1;
        //count++
    }

    function dec() public {
        count = count -1;
    }


}
