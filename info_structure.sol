//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Info_structure{
    struct Client{
        string player;
        uint money;
    }
    Client[] clients;
    function add_player(string memory _player,
uint _money) public returns (uint) {
Client memory new_client = Client(_player,
_money);
clients.push(new_client);
uint id = clients.length - 1;
return id;
}

function show_player(uint _id) public view returns (string memory){
    return clients[_id].player;
}
function show_money(uint _id) public view returns (uint) {
    return clients[_id].money;
}
function recount_money(uint _id, uint _money) public returns (uint) {
    clients[_id].money = _money;
    return clients[_id].money;
}

function count_players() public view returns (uint) {
    return clients.length;
}

function kick_player(uint _id) public{
    clients[_id]= clients[clients.length - 1];
    clients.pop();
}

}