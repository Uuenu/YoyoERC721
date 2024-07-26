pragma solidity ^0.8.18;

contract ERC721 {

    string public name;
    string public symbol;

    mapping(address => uint) _balances;
    mapping(uint => address) _owners;
    mapping(address => uint) _tokenApprovals;
    mapping(address => mapping(address => bool)) _operatorApprovals;

    modifier _requireMinted(uint tokenId){
        require(_exsist(tokenId), "not exsist");
        _;
    }

    constructor(string memory _name, string memory _symbol){
        name = _name;
        symbol = _symbol;
    }

    function transferFrom(address from, address to, uint tokenId) public payable {
        require(_isApprovedOrOwner(msg.sender, tokenId), "not an owner or approved!");

        _transfer(from, to, tokenId);
    }

    function _transfer(address from, address to, uint tokenId) public payable {

    }

    function _exsist(uint tokenId) internal view returns(bool) {
       return _owners[tokenId] != address(0);
    }

    function _isApprovedOrOwner(address spender, uint tokenId) internal view returns(bool) {

        address owner = ownerOf(tokenId);

        require(
            _owners[tokenId] != address(0) ||
            isApprovedForAll(owner, spender) ||
            getApproved(tokenId) == spender,
            "not an owner or approved!"
            );

        if (_owners[tokenId] != address(0)){
            return true;
        } else if (_tokenApprovals[spender] != 0) {
            return true;
        }

        return false;
    }

    function ownerOf(uint tokenId) public view _requireMinted(tokenId) returns(address) {
        return _owners[tokenId];
    }

    function isApprovedForAll(address _owner, address _operator) public view returns(bool) {
        return _operatorApprovals[_operator][_owner];
    }

    function getApproved(uint tokenId) public view returns (address) {

    }


}