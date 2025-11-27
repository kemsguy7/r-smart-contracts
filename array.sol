// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Arrays { 

    function useArrayForUint256(uint256[] calldata input) public pure returns (uint256[] memory) {
        return input;
    }

    //getting the length of an array 
    function returnFirstElement(uint256[] calldata myArray) public pure returns(uint256 ) {
        uint256 len = myArray.length; 
        return len;
    }

    // Looping through an array
    function productOfArray(uint256[] calldata myArray) public pure returns(uint256) {
        uint256 product = 1; 
        for (uint256 i = 0; i < myArray.length; i++) {
            product *= myArray[i];
        }
        return product;
    }

    // working with fixed arrays:  Add in the size of the array during declaration
    function productOfFixArray(uint256[5] calldata myArray) public pure returns (uint256) {
        uint256 last = myArray[4];
        return last; 
    } 

    // strings. :Are low key like arrays in solidity 
    function echo (string calldata user) public pure returns(string memory) {
        return string.concat("hello ", user); //concat function available in sol version 0.8.12 and aboce
    }

    function helloWorld() public pure returns (string memory) {
        return "Hello, World! ";
    }
}