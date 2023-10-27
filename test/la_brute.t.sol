// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {RareSkillsCTF_LostInTheDesserts} from "../src/RareSkillsCTF.sol";
import "forge-std/console.sol";

contract LaBrute is Test {
    RareSkillsCTF_LostInTheDesserts public ctf;

    error DING(uint256 x);

    function setUp() public {
        ctf = new RareSkillsCTF_LostInTheDesserts();
    }

    function testLaBrute() public {
        for (uint256 a = 1; a <= 3; a++) {
            for (uint256 b = 1; b <= 3; b++) {
                for (uint256 c = 1; c <= 3; c++) {
                    uint256 res1;
                    uint256 res2;

                    try ctf.les_macarons(a, b, c) returns (
                        uint256 r1,
                        uint256 r2
                    ) {
                        (res1, res2) = (r1, r2);
                    } catch {
                        continue; // If this fails, continue to the next iteration.
                    }

                    // Here, you can do something with the successful values (res1 and res2).
                    // For now, I'm just proceeding to the next iteration.
                }
            }
        }
    }
}
