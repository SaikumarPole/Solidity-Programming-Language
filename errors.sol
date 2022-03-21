pragma solidity 0.5.0;
contract errors{
    // this programm is to understand errors
   uint a;
   function errorHandling() public{
       // if a < 10 revert all changes occured till now and stops the execution
       // revert(string)
       if(a>10){
           revert("a is > 10");
       }

       // require does the same thing but it will check the condition and prints the message at a time
       // require(condition , error message )
       require(true == false , "true is not equal to false");

       //asset does the same thing but it willn't print anything 
       // asset(condition)
       assert(a == 0);
   }

   function errorInAnotherContract() public {

       // here we created a pointer to contract childContract
       // and calling the funcition error()
       // the error will propagate back
       childContract c = new childContract();
       c.error();
   }
}
contract childContract {
    function error() external{
        revert("reverted back");
    }
}
