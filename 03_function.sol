// SPDX-License-Identifier: 42 School
// function.sol
//
// Author: BEAUFILS Noah
// Date: 19:09:2023

pragma solidity ^0.8.4;

contract FunctionTypes {

	uint256 public number = 5;

	constructor() payable {}

	// 函数类型 (kind of functions)
	// function <function name>(<parameter types>) {internal|external|public|private} [pure|view|payable] [returns (<return types>)]

	// [public : visible à la fois en interne et en externe.]
	// [private : accessible uniquement depuis l'intérieur de ce contrat, et ne peut pas être utilisé par les contrats hérités.]
	// [external : n'est accessible que depuis l'extérieur du contrat (mais peut être appelée en interne via this.f(), f étant le nom de la fonction).]
	// [internal : ne peut être accédé que depuis l'intérieur du contrat, mais peut être utilisé par les contrats hérités.]

	// 默认 function (default)
	function add() external {
		number = number + 1;
	}

	// pure: 纯纯牛马
	function addPure(uint256 _number) external pure returns(uint256 new_number){
		new_number = _number + 1;
	}

	// view: 看客
	function addView() external view returns(uint256 new_number) {
		new_number = number + 1;
	}

	// internal: 内部
	function minus() internal {
		number = number - 1;
	}

	// 合约内的函数可以调用内部函数 (contract function can call internal functions)
	function minusCall() external {
		minus();
	}

	// payable: 递钱，能给合约支付eth的函数 (function witch pay ETH to contract)
	function minusPayable() external payable returns(uint256 balance) {
		minus();
		balance = address(this).balance;
	}
}