// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract MyContract{
    function isOdd (uint _i) public pure returns (bool) {
        if (_i % 2 == 0) {
            return false;
        } else {
            return true;
        }
    }

    // while loop
    function countOddNumbers(uint _i) public pure returns (uint) {
        uint count = 0;
        while (_i > 0) {
            if (_i % 2 == 1) {
                count++;
            }
            _i--;
        }
        return count;
    }

    // do while loop
    function countEvenNumbers2(uint _i) public pure returns (uint) {
        uint count = 0;
        do {
            if (_i % 2 == 0) {
                count++;
            }
            _i--;
        } while (_i > 0);
        return count;
    }

    // for loop with array
    uint[] public arr = [1, 3, 5, 7, 9];
    
    function countnum() public view returns (uint){
        uint count = 0;
        for (uint i = 0; i < arr.length; i++) {
            count++;
        }
        return count;
    }    

    
}