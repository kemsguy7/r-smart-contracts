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

  function addToArray(uint256 newItem) public {
    myArray.push(newItem);
  }

  function removeFromArray() public {
    myArray.pop();
  }

  function getLength() public view returns (uint256) {
    return myArray.length;
  }

  function getEntireArray() public view returns (uint256[] memory) {
    return myArray;
  }
}
