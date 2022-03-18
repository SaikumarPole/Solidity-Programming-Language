pragma solidity 0.6.0;
contract getterSetter{
    uint32 value;
    // this getValue() is used to get the value present in a variable
    //view represents read only
    function getvalue() external view returns(uint32){
        return value;
    }

    // this setValue() is used to set the value of the variable
    function setValue(uint32 _value) external {
        value = _value;
    }

}
