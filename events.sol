pragma solidity 0.5.0;
contract events{
    // events
    event Deposit(address indexed from,address indexed to,uint money);
    // an event cannot be accessed from the contract

    function letsDeposit(address _to) public payable{
        //emmiting the event
        // emit keyword is used to differentiate from function names
        emit Deposit(msg.sender,_to,msg.value);
    }

}

