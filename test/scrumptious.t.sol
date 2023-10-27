// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {RareSkillsCTF_LostInTheDesserts} from "../src/RareSkillsCTF.sol";
import "forge-std/console.sol";

contract Scrumptious is Test {
    RareSkillsCTF_LostInTheDesserts public ctf;

    error DING(uint256 x);

    function setUp() public {
        ctf = new RareSkillsCTF_LostInTheDesserts();
    }

    function testDelicious() public {
        uint256[] memory results;

        for (uint256 i = 0; i < 10; i++) {
            // uint256 randomNumber = pseudoRandom(type(uint256).max, i);
            try ctf.scrumptious(i) returns (uint256 result) {
                console.log(ctf.scrumptious(result));
                // console.log(randomNumber);
                // console.log(result);
                // console.log(ctf.delicious(result));
            } catch {
                // Handle the error or just continue to the next iteration.
            }
        }
    }

    function pseudoRandom(
        uint256 _range,
        uint256 _salt
    ) internal view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(block.timestamp, block.prevrandao, _salt)
                )
            ) % _range;
    }
}
