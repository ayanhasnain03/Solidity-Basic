// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;

contract Twitter {

    // Mapping to store one tweet per user
    mapping(address => string) public tweets;

    // Store a tweet for the sender
    function createtweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }

    // Get the tweet for a specific user (read-only)
    function getTweet(address _owner) public view returns (string memory) {
        return tweets[_owner];
    }
}
