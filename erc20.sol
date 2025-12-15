contract ERC20 {
  string public name;
  string public symbol;

  mapping(address => uint256) public balanceOf;

  address public owner;

  uint256 public totalSupply;

  uint8 public decimals;

  // owner -> spender -> allowance
  // this enables an owner to give allowance to multiple addresses
  mapping(address => mapping(address => uint256)) public allowance;

  constructor(string memory _name, string memory _symbol, uint8 decimals) {
    name = _name;
    symbol = _symbol;
    decimals = 18;

    owner = msg.sender;
  }

  function mint(address to, uint256 amount) public {
    // standard practice to mint to (to) address, for simplicity, we're minting to address of the deployer
    require(msg.sender == owner, 'Only owner can create tokens');
    balanceOf[owner] += amount;
  }

  function transfer(address to, uint256 amount) public {
    require(balanceOf[msg.sender] >= amount, 'Insufficient balance');
    require(to != address(0), 'Cannot send to address(0)'); //sanity address 0 chceck
    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;
  }

  // spender is the address of the account that is being granted the allowance by msg.sender
  function approve(address spender, uint256 amount) public {
    allowance[msg.sender][spender] = amount;
  }

  function transerFrom(address from, address to, uint256 amount) public {
    require(balanceOf[from] >= amount, 'Insufficient balance');

    if (msg.sender != from) {
      require(allowance[from][msg.sender] >= amount, 'not enough allowance');

      allowance[from][msg.sender] -= amount;
    }

    balanceOf[from] -= amount;
    balanceOf[to] += amount;
  }
}
