// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract ExampleStrings {
    string public ourName = "Nihal";
    function setMyString(string memory _myString) public view returns (bool) {
        return keccak256(abi.encodePacked(_myString)) == keccak256(abi.encodePacked(ourName));
    }
}

