pragma solidity ^0.4.19;

import "./zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "./ownable.sol";

contract travelCoin is StandardToken, Ownable {
	string public name = "travelCoin";
	string public symbol = "TC";
	uint8 public decimals = 4;
	uint256 public INITIAL_SUPPLY = 66666666;
	uint256 public ACOUNT_INIT_SUPPLY = 5000;

	function travelCoin() {
		totalSupply_ = INITIAL_SUPPLY;
		balances[msg.sender] = INITIAL_SUPPLY;
	}

	function createAccount(address addr) public onlyOwner {
		transferFrom(owner, addr, ACOUNT_INIT_SUPPLY);
	}

	function changeAccountInitSupply (uint256 newSupply) public onlyOwner {
		ACOUNT_INIT_SUPPLY = newSupply;
	}
}
