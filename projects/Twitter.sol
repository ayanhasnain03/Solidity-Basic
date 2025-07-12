// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;

contract Twitter {

    // Define our struct

    struct Tweet {
        address author;
        string content;
        uint256  timestamp;
        uint256 likes;
    }



    // Mapping to store one tweet per user
    mapping(address => Tweet[]) public tweets;

    // Store a tweet for the sender
    function createtweet(string memory _tweet) public {

        Tweet memory newTweets = Tweet({
        author:msg.sender,
        content:_tweet,
        timestamp:  block.timestamp,
        likes:0
        });

    tweets[msg.sender].push(newTweets);

    }

    // Get the tweet for a specific user (read-only)
    function getTweet(address _owner,uint _i) public view returns (Tweet memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory){
        return tweets[_owner];
    }
}
