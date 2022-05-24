// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.14;

error Unauthorized(address caller);

contract CustomError {
  address payable owner = payable(msg.sender);

  function withdraw() public {
    if (msg.sender != owner) {
        revert Unauthorized(msg.sender);
    }

    owner.transfer(address(this).balance);
  }
}
