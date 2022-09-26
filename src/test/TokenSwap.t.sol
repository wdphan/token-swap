// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {DSTest} from "ds-test/test.sol";
import {Utilities} from "./utils/Utilities.sol";
import {console} from "./utils/Console.sol";
import {Vm} from "forge-std/Vm.sol";
import {TokenSwap} from "/Users/williamphan/Desktop/Developer/token-swap/src/TokenSwap.sol";
import {ERC20} from "/Users/williamphan/Desktop/Developer/token-swap/lib/solmate/src/tokens/ERC20.sol";

contract TestToken is ERC20("Test Token", "TEST", 18) {
    function mintTo(address to, uint256 amount)
        public
        payable
        returns (address)
    {
        _mint(to, amount);
        return (to);
    }
}

contract TokenSwapTest is DSTest {
    Vm internal immutable vm = Vm(HEVM_ADDRESS);

    TokenSwap internal tokenSwap;
    Utilities internal utils;
    address payable[] internal users;
    address internal alice;
    address internal bob;
    address internal token1;
    address internal token2;

    // setup method runs before every individual test
    function setUp() public {
        utils = new Utilities();
        users = utils.createUsers(5);

        alice = users[0];
        bob = users[1];
        bob = users[2];
        bob = users[3];

        tokenSwap = new TokenSwap(token1, alice, 1, token2, bob, 1);
    }
}
