pragma solidity ^0.4.4;

contract access {

  bool paused = false;

  address public ownerAddress;
  // address public

  // Modifiers to handle scope and state.
  modifier onlyOwner(){
    require(msg.sender == ownerAddress);
    _;
  }

  modifier whenNotPaused () {
    require(paused == false);
    _;
  }

  modifier whenPaused () {
    require(paused == true);
    _;
  }

  // Pause functions. Super useful when something goes wrong.
  function pause () external onlyOwner whenNotPaused {
    paused = true;
  }

  function unpause () external onlyOwner whenPaused {
    paused = false;
  }

  function setCoreContractAddress () external onlyOwner {

  }

}
