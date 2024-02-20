# SpiderManGame Contract

SpiderManGame is a Solidity smart contract that simulates a game where Spider-Man fights against a villain. It is built on the Ethereum blockchain and provides functionalities for starting the game, defeating the villain, ending the game, and intentionally reverting a transaction.

## Contract Details

- **spiderMan**: The Ethereum address of the player controlling Spider-Man.
- **villain**: The Ethereum address of the villain.
- **gameInProgress**: A boolean indicating whether the game is currently in progress.

## Functions

1. **constructor()**: Initializes the contract, setting the deployer's address as Spider-Man and marking the game as not in progress.

2. **startGame(address _villain)**: Starts the game by specifying the address of the villain. Requires a valid address for the villain and sets the game as in progress.

3. **defeatVillain()**: Marks the game as not in progress and sets the villain's address to a special value indicating defeat.

4. **gameOver()**: Checks that the game is in progress and ends it by marking the game as not in progress and resetting the villain's address.

5. **callRevert()**: An intentionally reverting function for testing purposes. It reverts the transaction with a custom error message.

## Usage

To interact with the SpiderManGame contract, you can deploy it on an Ethereum-compatible blockchain network using Solidity compiler and Ethereum wallet such as MetaMask. Once deployed, you can call the functions described above to play the game and manipulate its state.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
