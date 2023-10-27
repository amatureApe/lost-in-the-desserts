// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {RareSkillsCTF_LostInTheDesserts} from "../src/RareSkillsCTF.sol";
import "forge-std/console.sol";

contract LeSouffle is Test {
    RareSkillsCTF_LostInTheDesserts public ctf;

    error DING(uint256 x);

    function setUp() public {
        ctf = new RareSkillsCTF_LostInTheDesserts();
    }

    function testLeSouffle() public {
        for (uint256 a = 0; a <= 5; a++) {
            for (uint256 b = 0; b <= 5; b++) {
                for (uint256 c = 0; c <= 5; c++) {
                    for (uint256 d = 0; d <= 5; d++) {
                        try ctf.le_souffle(a, b, c, d) returns (
                            uint256 eclair,
                            uint256 meringue
                        ) {
                            console.log(eclair, meringue);
                        } catch {
                            // If the function call fails, continue to the next iteration.
                        }
                    }
                }
            }
        }
    }
}
