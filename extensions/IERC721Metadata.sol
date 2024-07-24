pragma solidity ^0.8.18;

import "IERC721.sol";

interface IERC721Metadata is IERC721 {
    function symbol() external view returns (string memory _symbol);
    function name() external view returns (string memory _name);
    function tokenURI(uint256 tokenId) external view returns (string memory);
}