// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {RareSkillsCTF_LostInTheDesserts} from "../src/RareSkillsCTF.sol";

contract LostInTheDessertsTest is Test {
    RareSkillsCTF_LostInTheDesserts public ctf;

    function setUp() public {
        ctf = new RareSkillsCTF_LostInTheDesserts();
    }

    function testSol1() public {
        uint256 a = 1;
        uint256 b = 2;
        uint256 c = 1;
        uint256 d = 2;
        uint256[4] memory pie = [
            uint256(1),
            uint256(1),
            uint256(1),
            uint256(1)
        ];
        bool res = ctf.solve(a, b, c, d, 1, pie);
        assertTrue(res);
    }
}
