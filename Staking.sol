// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// mapping(uint=>address) staketime;
contract Staking {
    uint public amount;
    IERC20 public stakingtoken;
    IERC20 public rewardtoken;
    address public owner;

    constructor(IERC20 stakingtoken_,IERC20 rewardtoken_) {
        stakingtoken = stakingtoken_;
        rewardtoken = awardtoken_;
        owner = msg.sender;
    }
    //require permission from the owner for staking
    //check if the balance is greater than o then allow to stake
    //functionstaking

    function stake(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(stakingToken.balanceOf(msg.sender) >= amount, "Not enough tokens to stake");

        stakingToken.transferFrom(msg.sender, address(this), amount);
    }

    function categorySelection(uint amount,uint minutes) public pure returns (uint amount,uint interstRate)
    {

        if(categorySelection == 1)
        {
         string memory silver;
         uint minutes = 3;
         uint interstRate = 10;
         balance = amount;

        balance = balance * (balance * interstRate)^minutes;

        return balance;
        return interstRate = balance - amount;

        }
       if else(categorySelection == 2)
       {
        string memory gold;
        uint minutes = 6;
        uint interstRate = 20;
        balance = amount;

        balance = balance * (balance * interstRate)^minutes;

        return balance;
        return interstRate = balance - amount;
       }

       if else(categorySelection == 3)
       {
        string memory bronze;
        uint minutes = 9;
        uint interstRate = 33;
        balance = amount;

        balance = balance * interstRate * minutes;
       }
       else {
        revert("Invalid Category : Choose 1 ,2 or 3")
       }
    }
    //give max approval to staking contract they it could stake from the owners wallet
    rewardToken.approve(mywalletfromdeployed, type(uint256).max);


    //staking contract should transfer from the owner wallet to the users wallet
    rewardtoken.transfer(owner(me),user,rewardamount)


    //the principal amount can only be transferred when the timelock has ended
    //The interest amount can be withdrawn at any moment in time however once the time lock has ended the withdrawal should be both the principal and final interest amount combined (HINT: make use of a private function for interest handling)
    //Interest should be given at a monthly (minutely) basis
    function withdraw(uint amount) private returns (uint amount){
        require(block.timestamp>=staketime[msg.sender])

        bool success = transfer(amount)

        uint timepassed = block.timestamp-staketime(msg.sender);
        uint 

    }
}