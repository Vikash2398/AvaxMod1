
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SpiderManGame {
    address public spiderMan;
    address public villain;
    bool public gameInProgress;

    constructor() {
        spiderMan = msg.sender;
        gameInProgress = false;
    }

    function startGame(address _villain) public  {
        require(_villain != address(0), "Invalid villain address");
        villain = _villain;
        gameInProgress = true;
    }

    function defeatVillain() public  {
        gameInProgress = false;
        villain = address(1);
    }

    function gameOver() public {
        assert(gameInProgress);
        gameInProgress = false;
        villain = address(0);
    }

    function callRevert() public pure {
        revert("This function intentionally reverts");
    }
}
