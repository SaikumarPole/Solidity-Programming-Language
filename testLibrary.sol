pragma solidity 0.5.0;

import "library.sol";
contract testLibrary{
    using stableIntValue for int;
    function increment(int a) external returns (int){
        return a.increment();
    }
    function decrement(int a) external returns (int){
        return a.decrement();
    }
}
