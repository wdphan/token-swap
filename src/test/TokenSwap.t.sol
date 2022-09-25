// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {DSTest} from "ds-test/test.sol";
import {Utilities} from "./utils/Utilities.sol";
import {console} from "./utils/Console.sol";
import {Vm} from "forge-std/Vm.sol";
import {TokenSwap} from "/Users/williamphan/Desktop/Developer/token-swap/src/TokenSwap.sol";

contract TestToken is ERC20('Test Token', 'TEST', 18) {
	function mintTo(address to, uint256 amount) public payable {
		_mint(to, amount);
	}
}

contract TokenSwapTest is DSTest {
    Vm internal immutable vm = Vm(HEVM_ADDRESS);

   	TokenSwap internal tokenSwap;
    Utilities internal utils;
    address payable[] internal users;
    MockERC20 internal token;

    // setup method runs before every individual test
    function setUp() public {
        utils = new Utilities();
        users = utils.createUsers(2);
        token = new MockERC20();
        tokenSwap = new TokenSwap();
    }

    function testCanSwap() public {}

    // function testCannotSwap() public {
    //  }
}
