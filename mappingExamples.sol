pragma solidity 0.8.0;
contract mappingExamples{
    //maps
    mapping(string => uint256) stu;

    // this function adds marks to student
    function setStudentMarks(string memory stu_name,uint256 marks) public{
        stu[stu_name] = marks;
        //we can use push metho as well
    }

    // this function gets the marks of student
    function getStudentMarks(string memory stu_name) public view returns (uint256) {
        return stu[stu_name];
    }

    //nested mapping
    mapping(address => mapping(string => uint256)) customer;
    function setCustomerDetails(address customerAddress,string memory name,uint256 money) public{
        // setting the money of the customer to 100
        customer[customerAddress][name] = 100;
    }
    // this function gets the money of the customer
    function getCustomerMoney(address customerAddress,string memory name) public view returns (uint256) {
        return customer[customerAddress][name];
    }

    //arrays in mappings
    mapping(address => string[]) student;
    // this function sets the students subjects
    function setStudentSubjects(address stuAddress,string[] memory subjects) public{
        student[stuAddress] = subjects;
    }
    // this function gets the students subjects
    function getStudentSubjects(address stuAddress) public view returns(string[] memory){
        return student[stuAddress];
    } 
}

