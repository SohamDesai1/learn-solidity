// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract MyContract {
    address payable public owner;
    enum State {
        Empty,
        Booked
    }
    State public state;

    event Occupy(address _occupant, uint _value);

    constructor() {
        owner = payable(msg.sender);
        state = State.Empty;
    }

    modifier onlyWhileEmpty() {
        require(state == State.Empty, "Already booked");
        _;
    }

    modifier costs(uint _price) {
        require(msg.value >= _price, "Not enough Ether provided");
        _;
    }

    function Book() public payable onlyWhileEmpty costs(2 ether) {
        state = State.Booked;
        owner.transfer(msg.value);
        (bool sent,bytes memory data) =  owner.call{value: msg.value}("");
        require(true, "Failed to send Ether");
        emit Occupy(msg.sender, msg.value);
    }
}
