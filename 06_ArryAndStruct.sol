// SPDX-License-Identifier: 42 School
// data_storage.sol
//
// Author: BEAUFILS Noah
// Date: 20:09:2023

pragma solidity ^0.8.4;

contract ArrayTypes {

	// 固定长度 Array (fixed length array)
	uint[8] array1;
	bytes1[5] array2;
	address[100] array3;

	// 可变长度 Array (variable length array)
	uint[] array4;
	bytes1[] array5;
	address[] array6;
	bytes array7;
	// Note: bytes is special, it is an array, but you don't need to add [].

	// 初始化可变长度 Array
	// you cannot change length after declaration
	uint[] array8 = new uint[](5);
	bytes array9 = new bytes(9);

	// each node of a dynamic array must be initialized separately
	function initArray() external pure returns(uint[] memory) {
		uint[] memory x = new uint[](3);
		x[0] = 1;
		x[1] = 3;
		x[2] = 4;
		return(x);
	}

	function arrayPush() public returns(uint[] memory) {
		uint[2] memory a = [uint(1),2];
		array4 = a;
		array4.push(3);
		return array4;
	}
}

contract StructTypes {

	struct Student{
		uint256 id;
		uint256 score; 
	}

	Student student; // declaration
	//  给结构体赋值 (assignin value to a struct)
	// create a struct reference to storage in the function
	function initStudent1() external {
		Student storage _student = student; // assign a copy of student
		_student.id = 11;
		_student.score = 100;
	}

	function initStudent2() external {
		student.id = 1;
		student.score = 80;
	}

	function initStudent3() external {
		student = Student(3, 90);
	}

	function initStudent4() external {
		student = Student({id: 4, score: 60});
	}
}

	contract EnumTypes {

	enum ActionSet { Buy, Hold, Sell }
	ActionSet action = ActionSet.Buy;

	function enumToUint() external view returns(uint) {
		return uint(action);
	}
}