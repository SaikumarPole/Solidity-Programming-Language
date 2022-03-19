pragma solidity 0.8.0;
contract structres{
    struct stu{
        string name;
        uint256 id;
        address addr;
    }
    //array of structres
    stu[] students;

    //mapping of structres
    mapping(address => stu) studentList;


    function structreExaple() public{
        //create structres using these ways
        stu memory student1 = stu("saikumar",1,msg.sender);
        stu memory student2 = stu({name:"pole" , id:2 , addr:msg.sender});


        //access stuctres
        student1.id ;
         //modify structre variables
         student2.id = 30;
         //delete the structure
         delete student2;

        //array of structres example
         students[0] = student1;
         students[1] = student2;

        //delete array of structres variable
         delete students[0];

        //map insert struct member
        studentList[msg.sender] = student2;


         

    }
}

