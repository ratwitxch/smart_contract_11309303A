
//SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
contract StoreInfo{
    string text;
    int quantity;

    constructor(string memory nText, int nQuantity) {
        text = nText;
        quantity = nQuantity;
    }
    function Word() public view returns (string memory) {
        return text;
    }
    function Number() public view returns (int) {
        return quantity;
    }
    function New_Word(string memory nText) public {
        text = nText;
    }
    function New_Number(int nQuantity) public {
        quantity = nQuantity;
    }
}