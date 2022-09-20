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