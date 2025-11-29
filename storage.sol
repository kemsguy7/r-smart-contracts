// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Storage {
  uint256 internal x; //internal means other smart contracts cannot see the value

  uint256[] public myArray;

  function setX(uint256 newValue) public {
    x = newValue;
  }

  function getX() public view returns (uint256) {
    return x;
  }

  // Arrays in storage
  function setMyArray(uint256[] calldata newArray) public {
    myArray = newArray;
  }

  function addToArray(uint256 newItem) public {}
}
