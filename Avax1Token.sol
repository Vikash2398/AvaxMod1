
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
        require(_villain != spiderMan , "Invalid villain address");
        villain = _villain;
        gameInProgress = true;
    }

    function defeatVillain() public view returns (bool)  {
        if( !gameInProgress ){
            callRevert();
        }
        return true;
    }

    function gameOver() public {
        assert(gameInProgress);
        gameInProgress = false;
    }

    function callRevert() public pure {
        revert("This function intentionally reverts");
    }
}
