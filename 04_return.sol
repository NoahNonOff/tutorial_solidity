// SPDX-License-Identifier: 42 School
// return.sol
//
// Author: BEAUFILS Noah
// Date: 19:09:2023

pragma solidity ^0.8.4;

// 解构赋值 (deconstructing assignement)

contract Return {

	// 返回多个变量 (return multiple variable)
	// returns: [after function's name] declare type of returned variable
	// return: [in the body] return specified value
	function returnMultiple() public pure returns(uint256, bool, uint256[3] memory) {
		return (1, true, [uint256(1),2,5]);
	}

	function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array) {
		_number = 2;
		_bool = false; 
		_array = [uint256(3),2,1];
	}

	function returnNamed2() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array) {
		return(1, true, [uint256(1),2,5]);
	}

	// 读取返回值，解构式赋值 (read the output)
	function readReturn() public pure {

		uint256				_number;
		bool				_bool;
		bool				_bool2;
		uint256[3] memory	_array;

		// 读取全部返回值 (read all returned values)
		(_number, _bool, _array) = returnNamed();

		// 读取部分返回值，解构式赋值 (read just part of the value)
		(, _bool2, ) = returnNamed();
	}
}