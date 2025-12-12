//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Sender {
  function whoami() public view returns (address) {
    return address(this);
  }
}
