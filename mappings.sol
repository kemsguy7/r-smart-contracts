//SPDX-Licence-Identifier : MIT

pragma solidity ^0.8.20;

// mappings, Hashmaps, associative array, maps.

contract ExampleContract {
  mapping(uint256 => uint256) public myMapping;

  // - If you access a mapping with a key that has not been set, you will NOT get a revert , the mapping will just return the Zero value  of the datatype for the value

  // returns false by default
  mapping(uint256 => bool) public mapToBool;

  //returns 0 by default
  mapping(uint256 => uint256) public mapToUint;

  // returns ox000000000000000000000000000000000000000000 by default
  mapping(uint256 => address) public mapToAddress;

  function setMapping(uint256 key, uint256 value) public {
    myMapping[key] = value;
  }

  function getValue(uint256 key) public view returns (uint256) {
    return myMapping[key];
  }
}

// flaw: anyone can invoke the public functions and send tokens : to be fixed later
contract ERC20Token {
  mapping(address => uint256) public balances;

  function setSomeonesBalances(address owner, uint256 amount) public {
    balances[owner] = amount;
  }

  function transferTokensBetweenAddresses(address sender, address reciever, uint256 amount) public {
    balances[sender] -= amount; //deduct/debut the sender's balance
    balances[reciever] += amount; //credit the receiver's balance
  }
}

//NESTED MAPPINGS

contract NestedMaps {
  mapping(uint256 => mapping(uint256 => uint256)) public nestedMap;

  function setNestedMap(uint256 key1, uint256 key2, uint256 finalValue) public {
    nestedMap[key1][key2] = finalValue;
  }

  function getNestedMap(uint256 key1, uint256 key2) public view returns (uint256) {
    return nestedMap[key1][key2];
  }
}

contract TrackDebt {
  mapping(address => mapping(address => uint256)) public amountOwed;

  function setAmountOwed(address borrower, address lender, uint256 amount) public {
    amountOwed[lender][borrower] = amount;
  }
}
