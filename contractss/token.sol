// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';


contract tesTokens is ERC20{
  constructor() ERC20('TestCoin', 'TSC') {
    _mint(msg.sender, 1000000 * 10 ** 18);
  }
}