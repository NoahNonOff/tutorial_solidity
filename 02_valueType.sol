// SPDX-License-Identifier: 42 School
// valueTypes.sol
//
// Author: BEAUFILS Noah
// Date: 19:09:2023

pragma solidity ^0.8.4;

contract valueTypes {

	// 布尔值 (bool value)
	bool public _bool = true;
	// 布尔运算
	bool public _bool1 = !_bool; //取非 (take unit)
	bool public _bool2 = _bool && _bool1; //与 (AND)
	bool public _bool3 = _bool || _bool1; //或 (OR)
	bool public _bool4 = _bool == _bool1; //相等 (EQUAL TO)
	bool public _bool5 = _bool != _bool1; //不相等 (NOT EQUAL TO)

	// 整数 (integer)
	int public _int = -1; // (negatif + positif)
	uint public _uint = 1; // (unsigned)
	uint256 public _number = 20220330;
	// 整数运算 (operator on integer)
	uint256 public _number1 = _number + 1; // [ + - * / ]
	uint256 public _number2 = 2**2; // 指数 (power)
	uint256 public _number3 = 7 % 2; // 取余数 (modulo)
	bool public _numberbool = _number2 > _number3; // 比大小 (compare)


	// 地址 (address)
	address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71; // (20 octets)
	address payable public _address1 = payable(_address); // transfert + send method
	// 地址类型的成员
	uint256 public balance = _address1.balance; // balance of address


	// 固定长度的字节数组 (fixed bytes array)
	bytes32 public _byte32 = "MiniSolidity"; // bytes32: 0x4d696e69536f6c69646974790000000000000000000000000000000000000000
	bytes1 public _byte = _byte32[0]; // bytes1: 0x4d


	// Enum
	enum ActionSet { Buy, Hold, Sell }
	ActionSet action = ActionSet.Buy;

	// enum可以和uint显式的转换
	function enumToUint() external view returns(uint) {
		return uint(action);
	}
}