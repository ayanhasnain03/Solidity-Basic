// SPDX-License-Identifier: MIT
// License type for the contract

pragma solidity >=0.8.13 <0.9.0;

contract TeslaRegistry {
    struct Tesla {
        string model;
        uint256 year;
        string color;
        uint256 mileage;
        string vin;
    }
    Tesla[] public teslas;

    function addTesla(
        string memory _model,
        uint256 _year,
        string memory _color,
        uint256 _mileage,
        string memory _vin
    ) public {
        Tesla memory newTesla = Tesla(_model, _year, _color, _mileage, _vin);
        teslas.push(newTesla);
    }
    function getTotalTeslas() public view returns (uint256) {
        return teslas.length;
    }
}
