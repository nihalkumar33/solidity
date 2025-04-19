// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract MyContract {
    string public ourString = "Hello, world from nihal!";

    function updateOurString(string memory _updateString) public payable { 
        if (msg.value == 10 ether) {
            ourString = _updateString;

        } else {
            payable (msg.sender).transfer(msg.value);
            // this is done for sending the ether if it is not used
        }
    }
}


