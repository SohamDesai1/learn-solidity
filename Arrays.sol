// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract MyContract{
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apples", "oranges", "bananas"];
    string[] public values;
    uint[][] public array2D = [[1,2,3], [4,5,6]];
    
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns(uint) {
        return values.length;
    }
}