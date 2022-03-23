pragma solidity ^0.5.0;

library stableIntValue{
    function increment(int a) external view  returns(int){
        if(a+1 > 1000){
            revert("integer overflow");
        }
        return a+1;
    }
    function decrement(int a) external view  returns(int){
        if(a-1 < -100){
            revert("Interger underflow");
        }
        return a-1;
    }
}
