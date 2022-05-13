// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) interactions;

    constructor() {
        console.log("Smart contractor!");
    }

    function wave() public {
        totalWaves += 1;
        interactions[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getInteractions(address person) public view returns (uint256) {
        console.log(
            "You have total of %d interactions with %s",
            interactions[person],
            person
        );
        return interactions[person];
    }
}
