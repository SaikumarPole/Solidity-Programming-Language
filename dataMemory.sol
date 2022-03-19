pragma solidity 0.8.0;
contract dataMemory{
    // memory/storage locations

    // 1.storage
    // storage data is persistant
    // thse type of variables are stored in blockchain network
    // these variables can be accessed till the blockchain terminates
    // this is a storage variable 
    // all variables declared inside contract and outside of all functions are storage variables
    uint256 a;

    // 2.memory
    // memory variables can be accessed during the function execution
    // once the function over then all the modification done will not effect
    function memoryExample(string memory name) public view returns (string memory){
        return name;
    }

    // 3.stack 
    // local variables declared inside the function are stack variables
    // there is some limit to number of stack variables declared
    function stackVariables() public{
        uint256 a;
        uint256 b;
        a = 34;
        b = 77;
    }

    // 4. calldata
    // this type of data when the function visibility is external
    function calldataExample(uint256[] calldata arr) external returns(uint ){
        return arr[0];
    }

}

