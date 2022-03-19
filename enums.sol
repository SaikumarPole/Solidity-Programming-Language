pragma solidity 0.5.0;
contract enums{
    // enum declaration 
    // enum indices values from 0
    enum glassSizes{small,medium,large}
    // here values of small-0,medium-1,large-2

    glassSizes glass1;
    //creating default glass size which is constant
    glassSizes constant defaultGlass = glassSizes.medium;

    //setting the glass size
    function setSizeOfGlass() public{
        glass1 = glassSizes.small;
    }
    //getting the glass size
    function getSizeOfGlass() public view returns(glassSizes){
        return glass1;
    }
    //getting the default glass size
    function getDefaultGlassSize() public view returns(glassSizes){
        return defaultGlass;
    }
}

