// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;

contract StructSol {
    struct Student {
        string name;
        uint age;
        bool isEnrolled;
    }

 Student public student;

    //Assign vlaues with 3-ways

// 1st method
function setStudentInline() public {
    student = Student("Ayan",20,true);
}
// 2nd method

function setWithKeyValue() public {
 student = Student({name:"Ayan",age:20,isEnrolled:false});
}

// Method 3: Step-by-Step
function setWithSteps() public {
student.name = 'Ayan';
student.age = 20;
student.isEnrolled = true;
}

}
