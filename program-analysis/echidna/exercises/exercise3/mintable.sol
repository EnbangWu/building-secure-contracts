import "./token.sol";

contract MintableToken is Token{

    int totalMinted;
    int totalMintable;

    constructor(int _totalMintable) public {
        totalMintable = _totalMintable;
    }

    function mint(uint value) isOwner() public {

        require(int(value) + totalMinted < totalMintable);
        require(int(value) + totalMinted >= int(value));
        require(int(value) + totalMinted >= totalMinted);
        totalMinted += int(value);

        balances[msg.sender] += value;
     
    }

}
