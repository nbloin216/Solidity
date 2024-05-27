// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract Require {

    uint aNumber;

    function isOne(uint anotherNumber) public {

        //modifico aNumber
        //modifico otra variable
        // aca me da error
        require (anotherNumber == 1, " Not one");
        aNumber = anotherNumber;

    }

    function setNumber (uint value) public {
        aNumber = value;
        require(value == 1, "Not one");
    }
}
