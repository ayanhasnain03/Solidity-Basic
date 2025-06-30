// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title Fundamentals
/// @notice Demonstrates essential Solidity concepts: data types, constants, visibility, and time units
contract Fundamentals {
    /// @notice Ethereum address of a user or smart contract
    /// @dev 20-byte hexadecimal value used to identify accounts on Ethereum
    address public userAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    /// @notice A publicly accessible message stored as a dynamic UTF-8 string
    /// @dev Demonstrates use of string literals and default visibility
    string public message = "Hello Solidity!";

    /// @notice Indicates if the contract or a certain process is active/ready
    /// @dev Useful for toggling features or gating logic
    bool public isReady = true;

    /// @notice The maximum number of tokens or items allowed
    /// @dev Uses uint8 (0–255) to save storage and gas; declared as a compile-time constant
    uint8 public constant MAX_SUPPLY = 10;

    /// @notice Fixed wait period represented in seconds (1 day = 86400 seconds)
    /// @dev Solidity’s `days` keyword converts 1 to 86400 at compile time
    uint256 public constant WAIT_TIME = 1 days;
}
