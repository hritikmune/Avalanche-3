// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HRT_TOK is ERC20, Ownable {

constructor() ERC20("CTD-TOK", "HRT") Ownable(msg.sender) {
    _mint(_msgSender(), 80 * 10 * decimals());
}

    
    function Func_mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    
    function Func_burn(uint256 amount) external {
        _burn(_msgSender(), amount);
    }

    function FUNC_transfer_To(address to, uint256 amount) external {

        _transfer(_msgSender(), to, amount);
    }
}
