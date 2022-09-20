contract GetPaid is Ownable {
  function withdraw() external onlyOwner {
    address payable _owner = address(uint160(owner()));
    _owner.transfer(address(this).balance);
  }
}
/*
Note that we're using owner() and onlyOwner from the Ownable contract, assuming that was imported.

It is important to note that you cannot transfer Ether to an address unless that address is
of type address payable. But the _owner variable is of type uint160, meaning that we must 
explicitly cast it to address payable.

Once you cast the address from uint160 to address payable, you can transfer Ether to that
address using the transfer function, and address(this).balance will return the total balance
stored on the contract. So if 100 users had paid 1 Ether to our contract, address(this).balance 
would equal 100 Ether.

You can use transfer to send funds to any Ethereum address. For example, you could have a function
that transfers Ether back to the msg.sender if they overpaid for an item:
*/
uint itemFee = 0.001 ether;
msg.sender.transfer(msg.value - itemFee);

/*
Or in a contract with a buyer and a seller, you could save the seller's address in storage,
then when someone purchases his item, transfer him the fee paid by the buyer: seller.transfer(msg.value).