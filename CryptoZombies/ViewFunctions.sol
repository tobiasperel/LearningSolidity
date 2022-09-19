/*
view functions don't cost any gas when they're called externally by a user.

This is because view functions don't actually change anything on the blockchain – 
they only read the data. So marking a function with view tells web3.js that it only
needs to query your local Ethereum node to run the function, and it doesn't actually
have to create a transaction on the blockchain (which would need to be run on every 
single node, and cost gas).

We'll cover setting up web3.js with your own node later. But for now the big takeaway
is that you can optimize your DApp's gas usage for your users by using read-only 
external view functions wherever possible.

Note: If a view function is called internally from another function in the same contract
that is not a view function, it will still cost gas. This is because the other function
creates a transaction on Ethereum, and will still need to be verified from every node.
So view functions are only free when they're called externally.
*/
function getZombiesByOwner(address _owner) external view returns(uint[] memory) {
    // Start here
 }
