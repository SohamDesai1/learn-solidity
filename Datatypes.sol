// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract MyContract{
    // Datatypes
    uint value1 = 1;
    uint256 public value2  = 1;
    uint8 value3 = 1;   
    int public value4 = 1;
    int256 value5 = 1;

    // Boolean
    bool public value6 = true;

    // String
    string public str = "Hello World";
    bytes public str1 = "Hello World";
    bytes32 public str2 = "Hello World";

    // Address
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    
    // Struct
    struct MyStruct {
        uint value;
        string name;
    }

    MyStruct public myStruct = MyStruct(1, "Hello World");


    function getValue() pure public returns ( uint) {
        uint value = 1;
        return value;
    }
}
