// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;


contract SimpleToken {
    uint256 public maxPerMint = 3;
    function mint(uint256 amount) public {
        require(amount <= maxPerMint,"More than 3");
        mint(amount);
    }
}
