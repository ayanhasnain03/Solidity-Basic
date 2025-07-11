// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Array {
    // Dynamic array (can grow/shrink)
    uint[] public arr;

    // Another dynamic array with initial values
    uint[] public arr2 = [1, 2, 3];

    // Fixed-size array of 10 elements (all default 0)
    uint[10] public myFixedSizeArr;

    // Fixed-size string array of 5 elements
    string[5] public names;

    // Get single element from 'arr' at index i
    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Get the entire dynamic array
    function getArr() public view returns (uint[] memory) {
        return arr;
    }
}
