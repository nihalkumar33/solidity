// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17 <0.9.0;

contract wallet {

    PaymentRecieved public payment;
    function payContract() public payable {
        payment = new PaymentRecieved(msg.sender, msg.value);
    }

}

contract PaymentRecieved {
    address public from;
    uint public amount;

    constructor (address _from, uint _amount) {
        from = _from;
        amount = _amount;   
    }
}

contract wallet2  {
    struct PaymentRecievedStruct {
        address form;
        uint amount;
    }

    PaymentRecievedStruct public payment;

    function payContract() public payable {
        payment = PaymentRecievedStruct(msg.sender, msg.value);
    }
}