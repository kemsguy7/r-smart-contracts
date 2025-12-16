// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.13;

contract TupleContract {
  // TUPLES IN SOLIDITY

  function getTopLeaderboardScore() public pure returns (address, uint256) {
    return (0x2329050980487500380450598305050488495059, 100);
  }

  function highestScoreIsOver9000() public pure returns (bool) {
    (address leader, uint256 score) = getTopLeaderboardScore();

    if (score > 9000) {
      return true;
    }

    return false;
  }
}
