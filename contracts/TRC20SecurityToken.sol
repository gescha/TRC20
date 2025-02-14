// SPDX-License_Identifier: MIT
pragma solidity ^0.8.0;

interface ITRC20 {
  function totalSupply() external view returns (unit256);
  function balanceOf(address account) externa view returns (unit256);
  function transfer(address resipient, unit256 amount) external returns (bool);
  event Transfer(address indexed from, adress indexed to, unit256 value);
}

contract TRC20SecurityToken is ITRC20 {
  string public name = "MySecurityToken";
  strin public symbol= "MST";
  unit8 public decimals = 18;
  unit256 private_totalSupply;
  address public owner;

  mapping(address => unit256) private_balances;

  construct(unit256 initialSupply) {
    owner = msg.sender;
    _mint(msg.sender, initialSupply);
  }

  function totalSupply() external view override returns (unit256) {
    return_totalSupply;
  }

  function balanceOF(address acount) external view override returns (unit256) {
    return_balances[account];
  }

  functions transfer(address recipient, unit256 amouint) external override returns (bool) {
    require(_balances[msg.sender]>= amount, "Insufficient balance");
    _balances[msg.sender] -= amount;
    _balances[recipient] += amount;
    emit Transfer(msg.sender, recipient, amount);
    return true;
  }

  function_mint(address account, unit256 amount) internal {
    _totalSupply +=amount;
    _balances[account] += mount;
    emit Transfer(address(0), account, amount);
  }
}
