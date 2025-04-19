// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract TheBlockchainMessanger {
    uint public changeCounter;

    address public owner;

    string public message;

    constructor() {
        owner = msg.sender;
    }

    function setMessage(string memory _newMessage) public {
        if (msg.sender == owner) {
            message = _newMessage;
            changeCounter++;
        }
    }
}


