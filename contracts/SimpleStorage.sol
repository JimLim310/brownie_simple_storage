//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

// 1st lesson: Simple Storage Smart Contract Deployment
contract SimpleStorage {
    uint256 favouriteNumber;
    bool favouriteBool;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
