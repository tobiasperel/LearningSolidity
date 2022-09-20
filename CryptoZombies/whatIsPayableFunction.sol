/*
payable functions are part of what makes Solidity and Ethereum so cool — they are 
a special type of function that can receive Ether.

Let that sink in for a minute. When you call an API function on a normal web server,
you can't send US dollars along with your function call — nor can you send Bitcoin.

But in Ethereum, because both the money (Ether), the data (transaction payload), 
and the contract code itself all live on Ethereum, it's possible for you to call 
a function and pay money to the contract at the same time.

This allows for some really interesting logic, like requiring a certain payment
to the contract in order to execute a function.
*/
contract OnlineStore {
  function buySomething() external payable {
    // Check to make sure 0.001 ether was sent to the function call:
    require(msg.value == 0.001 ether);
    // If so, some logic to transfer the digital item to the caller of the function:
    transferThing(msg.sender);
  }
}

//Here, msg.value is a way to see how much Ether was sent to the contract, and ether is a built-in unit.

/* What happens here is that someone would call the function from web3.js
 (from the DApp's JavaScript front-end) as follows: */

// Assuming `OnlineStore` points to your contract on Ethereum:
OnlineStore.buySomething({from: web3.eth.defaultAccount, value: web3.utils.toWei(0.001)})


