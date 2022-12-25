// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Ownable {
    address public owner;
    modifier OnlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }
}

contract Locker {
    string public secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

contract MyContract is Ownable {
    address locker;

    constructor(string memory _secret) {
        Locker _locker = new Locker(_secret);
        locker = address(_locker);
        super;
    }

    function getSecret() public view OnlyOwner returns (string memory) {
        return Locker(locker).getSecret();
    }
}
