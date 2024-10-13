//SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

contract Info_structure{
    struct Client{
        string name;
        uint balance;
    }
    Client[] clients;
    function add_clients(string memory _name,
uint _balance) public returns (uint) {
Client memory new_client = Client(_name,
_balance);
clients.push(new_client);
uint id = clients.length - 1;
return id;
}

function get_Client(uint _id) public view returns (string memory){
    return clients[_id].name;
}
function get_balance(uint _id) public view returns (uint) {
    return clients[_id].balance;
}
function update_balance(uint _id, uint _balance) public returns (uint) {
    clients[_id].balance = _balance;
    return clients[_id].balance;
}

function how_many() public view returns (uint) {
    return clients.length;
}
function remove_Client(uint _id) public{
    clients[_id]= clients[clients.length - 1];
    clients.pop();
}

}