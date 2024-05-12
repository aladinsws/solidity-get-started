// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    // Enums
    enum Statuses {
        Vacant ,
        Occupied 
    }
    Statuses public currentStatus;

    // Events
    event Occupy(address _occupant,uint _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    // Modifiers
    // Check Status
    modifier onlyWhileVancant {
        require(currentStatus == Statuses.Vacant ,"Currently occupied !");
        _;
    }

    // Check price
    modifier costs(uint _amount) {
        require(msg.value >= 2 ether,"Not enough ether provided !");
        _;
    }

    function book() public payable onlyWhileVancant costs(2 ether){
        currentStatus = Statuses.Occupied;

        // Ether payments
        (bool sent, bytes memory data) = owner.call{ value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}