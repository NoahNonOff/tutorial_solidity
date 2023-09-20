// SPDX-License-Identifier: 42 School
// dataStorage.sol
//
// Author: BEAUFILS Noah
// Date: 20:09:2023

pragma solidity ^0.8.4;

// referenced type in Solidity

contract DataStorage {

	uint[] public x = [1,2,3];

	function fStorage() public {
		// [storage modified the chain]
		// here xStorage pointe to x so modified xStorage will modified x
		uint[] storage xStorage = x;
		xStorage[0] = 100;
	}

	function fMemory() public view {
		// [memory don't affect the chain]
		// modified xMemory will not change x
		uint[] memory xMemory = x;
		xMemory[0] = 100;
		xMemory[1] = 200;
		uint[] memory xMemory2 = x;
		xMemory2[0] = 300;
	}

	function fCalldata(uint[] calldata _x) public pure returns(uint[] calldata) {
		// [calldata type cannot be modified]
		// _x[0] = 0 // 这样修改会报错 (error)
		return(_x);
	}
}

contract Variables {

	// state variable (accessible for every function but consume a lot of gas)
	uint public x = 1;
	uint public y;
	string public z;

	function foo() external {
		// 可以在函数里更改状态变量的值 (you can modified state variable in function)
		x = 5;
		y = 2;
		z = "0xAA";
	}

	function bar() external pure returns(uint) {
		// local variable [same as C] (few gas)
		uint xx = 1;
		uint yy = 3;
		uint zz = xx + yy;
		return(zz);
	}

	function global() external view returns(address, uint, bytes memory) {
		// global variable (["https://www.geeksforgeeks.org/solidity-global-variables/"])
		address sender = msg.sender; // -> original block's address
		uint blockNum = block.number; // -> size of block
		bytes memory data = msg.data; // -> demanded data
		return(sender, blockNum, data);
	}

	/* ---------------------------- Unit ---------------------------- */
	// wei: 1
	// gwei: 1e9
	// ether: 1e18

	// second: 1
	// minutes: 60
	// hours: 3600
	// days: 86400
	// weeks: 604800
}