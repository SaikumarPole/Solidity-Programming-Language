pragma solidity 0.6.0;
//pragma is a keyword
//also mention the version of the solidity
contract day1{
    //Variables in Solidity

    //1. Fixed-size data types
    uint a;
    bool gotJob;
    address recipient;
    bytes32 binaryData;

    //2. Variable sized data types
    string name;
    bytes data;
    uint[] arr;
    mapping(uint32 => string) users;

    //3. User defined Data types
    struct Stu{
        uint32 rollno;
        uint stu_name;
        uint32[] marks
    }
    enum Subjects{
        Maths;
        Science;
        Social;
        Physics
    }
    
    
}
