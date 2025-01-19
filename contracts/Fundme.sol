// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract  Fundme{
    uint256 minimumUSD = 50;
    function send() public payable{
        require(getConversionRate(msg.value) >=5, "Cant send less than 50USD");
    
    }

    function getPrice() public view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // addreess 0x694AA1769357215DE4FAC081bf1f309aDC325306
        (,int256 answer,,,) = priceFeed.latestRoundData();
        // price of eth in terms of USD
        return uint256(answer * 1e10);

        
    }

     function getConversionRate(uint256 ethAmmount)public view returns(uint256){
       uint256 ethPrice =getPrice();
       uint256 ethInUsd = (ethPrice * ethAmmount) / 1e10;
        return ethInUsd;

     }
}