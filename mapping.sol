// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;

// A simple contract to demonstrate how mappings work
contract Mapping {

    // Mapping to store a number (uint) for each address
    // Example: myMap[0x123...] = 5;
    mapping(address => uint) public myMap;

    // ✅ Read: Get the value for a given address
    function get(address _addr) public view returns (uint) {
        return myMap[_addr]; // Returns 0 if address not set
    }

    // ✅ Write: Set a value for a given address
    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    // ❌ Delete: Remove the value for an address (resets to default, which is 0)
    function remove(address _addr) public {
        delete myMap[_addr]; // Equivalent to myMap[_addr] = 0;
    }
}
