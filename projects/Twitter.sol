// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13 <0.9.0;

contract Twitter {
    uint16 public constant MAX_TWEET_LENGTH = 200;

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public {
        require(bytes(_tweet).length > 0, "Tweet cannot be empty");
        require(bytes(_tweet).length <= MAX_TWEET_LENGTH, "Tweet cannot exceed 200 characters");

        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _owner, uint _i) public view returns (Tweet memory) {
        require(_i < tweets[_owner].length, "Tweet does not exist");
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory) {
        return tweets[_owner];
    }
}
