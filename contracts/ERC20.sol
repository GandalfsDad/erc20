// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import { IERC20 } from "./IERC20.sol";

contract ERC20 is IERC20 {

    string public _name;
    string public _symbol;

    function name() public override view returns (string memory) {
        return _name;
    }

    function symbol() public override view returns (string memory) {
        return _symbol;
    }

    function decimals() public virtual view returns (uint8);

    function totalSupply() public virtual view returns (uint256);

    function balanceOf(address _owner) public virtual view returns (uint256 balance);

    function transfer(address _to, uint256 _value) public virtual returns (bool success);

    function transferFrom(address _from, address _to, uint256 _value) public virtual returns (bool success);

    function approve(address _spender, uint256 _value) public virtual returns (bool success);

    function allowance(address _owner, address _spender) public virtual view returns (uint256 remaining);
}