//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

//imports

//errors
    error Capitol__AgeError(uint8 age);
contract Capitol{

    enum GameStatus{
        DEAD,
        ALIVE
    }

    /*---------Struct--------*/
    struct Person{
        uint8 age;
        string gender;
        
       
    }
    /*----------State variables------*/
    Person[] private s_persons;
    uint256 private  s_startDate;
    uint256 private  s_endDate;

    /*----------Events-------------*/
    event PersonAdded(Person person);

    /*----------modifiers------------*/
    modifier checkGender(Person[]calldata persons){

        _;
    }
    modifier checkAge(uint8 age){
        if(!(age>=12 && age<18)){
            revert Capitol__AgeError(age);
        }
        _;
    }

    //constructor
    constructor(){
    
    }

    //add Person
    function addPerson(uint8 _age,string memory _gender)public checkAge(_age){
        s_persons.push(Person(_age,_gender));
        //emit PersonAdded();
    }

    //choose a person at random- Use chainlink VRF

    //checkWinner - Chainlink Keepers

    ///get number of persons
    function getNumberOfPersons() public view returns(uint256){
        return s_persons.length;
    }
}
