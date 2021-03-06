// SPDX-Licence-Identifier: MIT 

pragma solidity ^0.6.0; 


pragma solidity ^0.6.0; 

contract SimpleStorage { 

    uint256 favoriteNumber; 
    
    struct People { 
        uint256 favoriteNumber;
        string name; 
    } //new attributes

    People[] public people; //dynamic array
    mapping(string => uint256) public nameToFavoriteNumber; 
    //People public person = People({favoriteNumber: 2, name: "Patrick"}); 

    function store(uint256 _favoriteNumber) public { 
        favoriteNumber = _favoriteNumber;
    }

    // view --> reading off the blockchain 
    // pure --> math
    // orange --> change state of var
    function retrieve() public view returns(uint256) { 
        return favoriteNumber; 
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{ 
        people.push(People(_favoriteNumber, _name)); 
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
