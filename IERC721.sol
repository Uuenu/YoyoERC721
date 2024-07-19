pragma solidity ^0.8.18;

interface ERC721 {
    event Transfer(address indexed _from, address indexed _to, uint256 tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 tokenId);
    event ApprovalForAll(address indexed _owner, address indexed operator, bool _approved);

    function balanceOf(address _owner) external view returns(uint256);
    function ownerOf(uint256 tokenId) external view returns(address);
    function safeTransferFrom(address _from, address _to, uint256 tokenId) external payable;
    function safeTransferFrom(address _from, address _to, uint256 tokenId, bytes data) external payable;
    function transferFrom(address _from, address _to, uint256 tokenId) external payable;
    function approve(address _to, uint256 tokenId) external payable;
    function setApprovalForAll(address _operator, bool approved) external payable;
    function getApproved(uint256 _tokenId) external view returns (address);
    function isApprovedForAll(address _owner, address _operator) external view returns(bool);
}