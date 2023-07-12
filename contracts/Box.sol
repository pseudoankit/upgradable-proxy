// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

// check : https://docs.google.com/document/d/1A9Ts-jAwmIqfL8hzk3mdwYQcwb_P8H_h/edit?usp=drive_web&ouid=109435470249078837132&rtpof=true

contract Box{
    uint256 private value;

    //emitted when the stored value changes
    event ValueChanged(uint256 newValue);

    //stores a new value in the smart contract state var
    function store(uint256 newValue) public{
        value=newValue;
        emit ValueChanged(newValue);
    }

    //reads the last stored value
    function retrieve() public view returns(uint256){
        return value;
    }
}