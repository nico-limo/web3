# Solidity Notes

This repository contains notes on the Solidity programming language for creating smart contracts on the Ethereum blockchain.

## SimpleStorage Contract

The `SimpleStorage` contract is a basic example that demonstrates how to store and retrieve data on the Ethereum blockchain. Here are some notes on the contract:

- The contract is written in Solidity version `0.8.8`.
- The contract has a `uint256` variable called `favoriteNumber` that is initialized to zero.
- The `store` function allows users to update the value of `favoriteNumber`.
- The `getFavoriteNumber` function returns the current value of `favoriteNumber`.
- The `double` function takes an input number and returns the result of that number multiplied by two.
- The `store` and `getFavoriteNumber` functions are `public`, which means they can be called by anyone.
- The `double` function is `pure`, which means it doesn't read or modify the contract's storage.
- A mapping called nameToFavoriteNumber that maps string names to uint256 favorite numbers.
- A struct called People that contains a uint256 favoriteNumber and a string name.
- An array called people that stores instances of the People struct.

## Types

Solidity supports various data types that can be used to declare variables, function parameters, and return values. Here are some common data types:

- `uint`: an unsigned integer, i.e., a positive integer without a sign.
- `int`: a signed integer, i.e., an integer that can be positive or negative.
- `bool`: a Boolean value, i.e., either `true` or `false`.
- `string`: a sequence of characters, e.g., `"hello world"`.
- `address`: an Ethereum address, i.e., a 20-byte identifier used to send and receive ether (the cryptocurrency used on the Ethereum blockchain).

In addition, Solidity also supports arrays, mappings, and structs, which allow you to define more complex data structures.

## Functions

Solidity allows you to specify the visibility of functions and variables using the `public`, `private`, `internal`, and `external` keywords. Here are some notes on visibility:

- `public`: the function or variable can be accessed by anyone, both within and outside the contract.
- `private`: the function or variable can only be accessed within the contract.
- `internal`: the function or variable can only be accessed within the contract and any contracts that inherit from it.
- `external`: the function can only be called from outside the contract, usually by another contract or account.

## Calldata, memory & Storage

- `calldata` temporary variables and not modificables.
- `memory` temporary variables and modificables.
- `storage` permanent variables and modificables.

## Notes

Here are some notes on Solidity based on the `SimpleStorage` contract:

- It's generally cheaper to call a variable than to call a function, since calling a function requires executing code on the blockchain.
- If a `uint256` variable doesn't have an explicit initial value, it will be initialized to zero.
- Variables without the `public` keyword are internal to the contract and cannot be called by external contracts or accounts.
- `memory` is only used on array, struct, or mapping types.
