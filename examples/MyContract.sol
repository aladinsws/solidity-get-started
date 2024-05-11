// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    int256 public myInt = 1;
    uint public myUint  = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello world !";
    bytes32 public myBytes32 = "Hello world !";

    address public myAdress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct Mystruct {
        uint256 myUinit256;
        string myString;
    }
    
    Mystruct public mystruct = Mystruct(1,"Hello , world!");

    // Local Variables
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
}