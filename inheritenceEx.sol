pragma solidity ^0.5.0;
contract bankAccount {
    uint private balance;
    constructor(uint val) public{
        balance = val;
    }
    function deposit(uint val) external{
        balance -= val;
    }
    function credit(uint val) external{
        balance += val;
    }
    function getBalanceAmmount() external view returns (uint){
        return balance;
    }

}
contract inheritenceEx is bankAccount(10){
    string private name;
    uint private age;
    bankAccount b;
    constructor()  public {
        b = new bankAccount(1);
    }
    //setting the age
    function setName(string calldata _name) external {
        name = _name;
    }
    //getting the age
    function getName() external view returns(string memory){
        return name;
    }
    //setting the age
    function setAge(uint _age) external{
        age = _age;
    }
    //getting the age
    function getAge() external view returns(uint){
        return age;
    }
    //get the ammount 
    function getAmmount() view external {
        b.getBalanceAmmount();
    }
}
