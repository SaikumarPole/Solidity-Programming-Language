pragma solidity 0.6.0;
contract functionsVisibility{
    //function visibility keywords
    int32 value;

    //private restrict the visibility and  cannot be called/accessed form outside the contract
    function getValue(int32 _value) private {
        value = _value;
    }
    //internal visibility restrict the visibility and can be called within the contract and 
    //not from outside the contract
    function getValue_private(int32 _value) internal {
        value = _value;
    }
    // external is used to call the function only from outside the contract
    function getValue_internal(int32 _value) external {
        value = _value;
    }
    //public keyword does not restrict the visibility 
    // we can access the function from outside and from inside of the contract
    function getValue_public(int32  _value) public{
        value = _value;
    }

}
