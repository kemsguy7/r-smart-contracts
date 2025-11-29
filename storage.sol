// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Storage {
  uint256 internal x;

  function setX(uint256 newValue) public {
    x = newValue;
  }

  function getX() public view returns (uint256) {
    return x;
  }
}
