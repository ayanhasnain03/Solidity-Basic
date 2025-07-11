// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ArrayExample {
    uint[] public dynamicArray;
    uint[5] public fixedArray;

    function addToDynamicArray(uint value) public {
        dynamicArray.push(value);
    }
    function getDynamicArrayLength() public view returns (uint) {
        return dynamicArray.length;
    }
}
