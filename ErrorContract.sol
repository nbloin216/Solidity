// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract ErrorContract{

    uint aNumber;
    error NotOne();

    function setNumber(uint anotherNumber) public {

        //modifico aNumber
        //modifico otra variable
        // aca me da error
        //require (anotherNumber == 1, " Not one");
        if (anotherNumber !=1){
            revert NotOne();
            
        }
        aNumber = anotherNumber;


}
}
