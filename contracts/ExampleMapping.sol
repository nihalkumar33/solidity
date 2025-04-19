// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract ExapmleMapping {
    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
}


