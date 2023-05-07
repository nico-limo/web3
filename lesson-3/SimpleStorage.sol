// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; 

contract SimpleStorage {
    uint256 public favoriteNumber;


    mapping (string => uint256) public nameToFavoriteNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
   

    /**
     * @dev Stores the input number as the new favoriteNumber.
     * @param _favoriteNumber The new favorite number to be stored.
     */
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    /**
     * @dev Retrieves the current favorite number.
     * @return The current favorite number.
     */
    function getFavoriteNumber() public view returns(uint256) {
        return favoriteNumber;
    }

    /**
     * @dev Returns the input number multiplied by 2.
     * @param x The number to be multiplied by 2.
     * @return The result of the input number multiplied by 2.
     */
    function double(uint256 x) public pure returns(uint256) {
        return x * 2;
    }

   
      /**
     * @dev Adds a new person to the people array.
     * @param _name The name of the person.
     * @param _favoriteNumber The favorite number of the person.
     */
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}