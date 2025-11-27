// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.0;

contract Loops{
    function addNumbers() public pure returns (uint256) {
        uint256 sum = 0; 
        for (uint256 i = 0; i < 100; i++) {
            sum = sum + i; 
        }
        return sum; 
    }

    function findPrimeFactor (uint256 x) public pure returns (uint256 primeFactor) {
        // start at 2, 1 is not a prime factor 
        // use <= because x might b prime 
        if (x < 2) return 0; // Edge case: 0
        for (uint256 i = 2; i <= x; i++) {
            if (x % i == 0) {
                return i;
            }
        }
        return x; //Fallback : xi is prime (e.g x = 7)
    }
}