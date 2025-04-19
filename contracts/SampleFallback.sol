// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract SampleFallback {

    uint public lastValueSent;
    string public lastFunctionCalled;  

    receive() external payable { 
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;  
        lastFunctionCalled = "fallback";
    }
}


