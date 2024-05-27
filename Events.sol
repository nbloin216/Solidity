// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract Events{

    uint public aNumber;
    event MyEvent( address user, uint value); // se puede indexar el evento, para filtrar la data que genera todo el contrato

    function setNumber (uint anotherNumber) public {
        aNumber = anotherNumber;
        emit MyEvent(msg.sender, anotherNumber);
    }

    function setNumber2(uint anotherNumber) public {
        aNumber = anotherNumber;

    }


}
