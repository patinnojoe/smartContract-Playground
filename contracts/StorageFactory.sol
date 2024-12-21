// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import './Storage.sol';

contract StorageFactory{
    Storage[] public simpleStorageArray;

    function  createSimpleStorage() public{
        Storage simpleStorage = new Storage();
        simpleStorageArray.push(simpleStorage);

    }
    function store(uint256 index, uint256 storageNumber)   public{
        Storage simpleStorage = simpleStorageArray[index];
        simpleStorage.store(storageNumber);

    }
    function get (uint256 index )   public view returns (uint256){
        Storage simpleStorage = simpleStorageArray[index];
      return  simpleStorage.retrieve();

    }


}