pragma solidity 0.6.0;
contract Arrays{
    //storage arrays: stores memory in blockchain
    //memory arrays: once the contract got executed then memory will disapper

    //1. storage arrays
    // these are dynamically created arrays 
    // memory of these will increse once limit exceeds
    uint[] arr;
    function storageArrays() public{
        // insert elements
        arr.push(1);
        arr.push(2);

        arr[1];

        //modify elements
        arr[1] = 12;

        //delete elements
        // this operation sets the value at that index to default value
        delete arr[0];

        for(uint i=0;i < arr.length;i++){
            arr[i];
        }

    }
    //2.memory arrays
    function memoryArrays() public{
        // memory size should be give during declaration
        uint[] memory mArray = new uint[](10);

        //inserting elements
        mArray[0] = 0;
        mArray[1] = 1;

        //deleting element
        delete mArray[1];

        for(uint i=0;i<mArray.length;i++){
            mArray[i];
        }

    }
    


}
