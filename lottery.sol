pragma solidity 0.5.0;
contract lottery{
    //we have two variables
    //1. manager : who manages the lottery
    //2. player : the people who participate in lottery
    address public manager;
    address payable[] public players;

    
    // manager is the one who starts the contract lottery
    constructor () public{
        manager = msg.sender;
    }

    // any player can enter into the lottery
    function enter() public  payable{
        // the player should atleast send 1 ether to participate in lottery
        require(msg.value >= 1 ether,"need atleast 1 ether to participate in lottery");
        // once we got atlest 1 ether, we add the address of the participant into players array
        players.push(msg.sender);
    }
    // only manager should pick winner
    function pickWinner() public{
        // only manager can pick winner
        require(msg.sender == manager , "you don't have permission");

        // sudo random operation we are doing here
        uint index = randomNumber() % players.length;
        //once we found the index then we transfer the total ammound to that perticular address
        players[index].transfer(address(this).balance);
        // once the ammount got tranfered we again re-initialise the array
        players = new address payable[](0);
    }
    // this function is used to find the random number
    function randomNumber() private returns (uint){
        return  uint(keccak256(abi.encodePacked(players, block.difficulty, now)));
    }
    

}
