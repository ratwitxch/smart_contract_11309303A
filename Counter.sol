
//SPDX-License-Identifier: MIT

pragma solidity 0.8.23;
contract Counter {
    int public count;
    function add() public{
        count++;
    }
    function minus() public{
        count--;
    }
    function restart() public{
        count*=0;
    }
    function double() public{
        count*=2;
    }
    function half() public{
        count/=2;
    }
}

/*
Happy coding everyone ^ -^
Github: ratwitch
*/