# 🪙 Staking and Reward Token Smart Contracts

This project implements a complete **staking system** in Solidity where users can stake ERC20 tokens to earn rewards. It includes three main smart contracts that handle staking logic, reward calculation, and token management.

---

## 📁 Project Overview

| Contract | Description | Remix Link |
|-----------|--------------|-------------|
| **StakeToken.sol** | ERC20 token used for staking | [Open in Remix](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.30+commit.73712a01.js) |
| **RewardToken.sol** | ERC20 token used for distributing staking rewards | [Open in Remix](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.30+commit.73712a01.js) |
| **Staking.sol** | Core contract that manages staking, lock periods, and reward logic | [Open in Remix](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.30+commit.73712a01.js) |

---

## 🚀 Features

- ✅ Secure token staking system  
- 🕒 Lock period mechanism for staked tokens  
- 💰 Reward distribution using a dedicated ERC20 token  
- 🧮 Tier-based reward system (Bronze, Silver, Gold)  
- 🔐 Uses `nonReentrant` modifier for transaction safety  
- ⚙️ OpenZeppelin libraries for ERC20 and access control  

---

## 🧠 How It Works

1. **Users stake tokens** from the StakeToken contract into the Staking contract.  
2. Tokens are **locked** for a specific duration based on the selected tier.  
3. The Staking contract **calculates rewards** using compounding or simple interest logic.  
4. After the lock period, users can **withdraw** both staked and reward tokens.

---

## 🛠️ Tech Stack

- **Language:** Solidity `^0.8.30`  
- **Libraries:** OpenZeppelin ERC20, Ownable, ReentrancyGuard  
- **Tools:** Remix IDE, MetaMask, Hardhat (optional)

---

## ⚙️ Deployment Steps (Remix IDE)

1. Open the links above in **Remix**.  
2. Compile all three contracts under Solidity version `0.8.30`.  
3. Deploy in the following order:
   1. **StakeToken.sol**
   2. **RewardToken.sol**
   3. **Staking.sol**  
      → Pass the addresses of the two tokens to the constructor:
      ```solidity
      constructor(address _stakeToken, address _rewardToken)
      ```
4. Interact with functions like:
   - `stake(uint256 amount)`
   - `withdraw()`
   - `getReward()`

---

## 🔐 Security

- Protected against **reentrancy attacks** using `nonReentrant`  
- Access control with `onlyOwner` modifier  
- Overflow protection (built-in from Solidity 0.8.x)

---

## 📈 Future Improvements

- Dynamic APR based on staking duration  
- Multi-token staking pools  
- Web3 frontend integration  

---

## 👤 Author

**Momin Kiani**  
GitHub: [momin-kiani](https://github.com/momin-kiani)

---

## 🪪 License

This project is licensed under the **MIT License** — you’re free to use, modify, and distribute.
