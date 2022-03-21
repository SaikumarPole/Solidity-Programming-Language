pragma solidity 0.8.0;
contract contructorEx{
    uint a;
    // contructor is invoked once the contract is created/called
    constructor(uint _a) public{
        a = _a;
        //from  contructor we can call another function as well
        fun();
    }
    function fun() public view returns(uint) {
        return a;
    }
}
contract childContract is HelloWorld{
    //we can call the parent contructor by just like this
    uint some;
    constructor(uint b) HelloWorld(some) public{
        // nothing here
    }
}
