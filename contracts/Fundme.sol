// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract  Fundme{
    uint256 minimumUSD = 50;
    function send() public payable{
        require(msg.value >=5, "Cant send less than 50USD");
    
    }

    function getPrice() public{
        AggregatorV3Interface priceFeed;

        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // addreess 0x694AA1769357215DE4FAC081bf1f309aDC325306

        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) = priceFeed.latestRoundData();
    }

     function getConversionRate()public{}
}