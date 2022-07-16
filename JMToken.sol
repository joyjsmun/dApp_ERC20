//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

//ERC20 token contract, and extended ERC20 standard from OZ
contract JMToken is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // msg.sender ; an address to mint to , amounts of tokens to min
        // ERC20 tokens by default work with 18 decimal places. So 1 full LW3Token in this case, is actually represented as 10 ^ 18. Therefore, to get 10 full LW3Tokens, we use 10 * 10 ** 18.
        _mint(msg.sender, 10* 10 ** 18);
        
    }
}