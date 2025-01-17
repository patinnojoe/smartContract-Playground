// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract  Fundme{
    uint256 minimumUSD = 50;
    function send() public payable{
        require(msg.value >=5, "Cant send less than 50USD");
        


    }
}