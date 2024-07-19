pragma solidity ^0.8.18;

interface IERC721Metadata {
    function symbol() external view returns (string memory _symbol);
    function name() external view returns (string memory _name);
    function tokenURI(uint256 tokenId) external view returns (string memory);
}