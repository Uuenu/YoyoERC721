pragma solidity ^0.8.18;

interface IERC721Receiver {
    function onERC721Receiver(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns(bytes4);
}