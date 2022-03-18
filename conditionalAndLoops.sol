pragma solidity 0.6.0;
contract conditionalAndLoops{
    uint256 a;
    uint256 b;
    uint256 c;
    function ifElseExample() public{
        a = 20;
        b = 50;
        c = 100;
        // if a<b then if block executes
        if(a<b){
            a = a+b;
        }
        else if(a == b){
            //if a equals b then else if block executes
            b = a+b;
        }
        else{
            // if none of the above conditions meet then 
            // else block will execute
            c = a+b;
        }
    }
    function getValuesOfABC() public view returns(uint256,uint256,uint256){
        return (a,b,c);
    }
    function forLoopExample() public{
        // this loop runs for exactly 10 times and breaks
        for(uint256 i = 0;i<10;i++){
            a = a+1;
        }
    }
    function whileLoopExample() public{
        // this loop runs till we get the b value 100
        while(b<100){
            // if b equals to 90 then while loop breaks
            if(b==90){
                break;
            }
            b = b+1;
        }
    }

}
