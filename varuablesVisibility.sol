pragma solidity 0.6.0;
contract helloWorld{
    
    //  Anyone can access the value of the variable.
    int32 public valuePublic;

    // Only functions within the same contract can access the value
    int32 private valuePrivate;

    // Only functions inside the same contract can access the value
    // also the inherited contracts also can access this variable
    int32 internal valueInternal;

    // Only functions outside the same contract can access the value
    //int32 external valueExternal;

    function setValueInternal(int32 value) public {
        valueInternal = value;
    }
    function getValueInternal() public view returns (int32){
        return valueInternal;
    }
    function setValuePrivate(int32 value) public {
        valuePrivate = value;
    }
    function getValuePrivate() public view returns (int32){
        return valuePrivate;
    }
}

