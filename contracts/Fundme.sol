// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract  Fundme{
    uint256 minimumUSD = 50;
    function send() public payable{
        require(msg.value >=5, "Cant send less than 50USD");
    
    }

    function getPrice() public{
        // addreess 0x694AA1769357215DE4FAC081bf1f309aDC325306
    }

     function getConversionRate()public{}
}