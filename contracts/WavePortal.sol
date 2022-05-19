// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
  
    mapping(address=>uint) count;
    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }
    function wave() public{
        totalWaves+=1;
         uint counting=++count[msg.sender];
        console.log("%s has waved %d number of times",msg.sender,counting);
        console.log(counting);
    }
    function getTotalWaves() public view returns(uint256){
        console.log("we have %d total waves",totalWaves);
       
       

        return totalWaves;
    }
}