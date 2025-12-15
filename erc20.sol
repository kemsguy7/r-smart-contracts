contract ERC20 {
  string public name;
  string public symbol;

  mapping(address => uint256) public balanceOf;

  constructor(string memory _name, string memory _symbol) {
    name = _name;
    symbol = _symbol;
  }
}
