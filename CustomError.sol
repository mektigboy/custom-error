// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.14;

contract CustomError {
  address payable owner = payable(msg.sender);

  function withdraw() public {
    if (msg.sender != owner) {
        revert("Error.");
    }

    owner.transfer(address(this).balance);
  }
}
