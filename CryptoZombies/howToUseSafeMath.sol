/*
To prevent this, OpenZeppelin has created a library called SafeMath that prevents these issues by default.

But before we get into that... What's a library?

A library is a special type of contract in Solidity. One of the things it is useful for is to attach
functions to native data types.

For example, with the SafeMath library, we'll use the syntax using SafeMath for uint256. The SafeMath
library has 4 functions — add, sub, mul, and div. And now we can access these functions from uint256 as follows:
*/

import "./safemath.sol";

contract duck  {
  using SafeMath for uint256;

  uint256 a = 5;
  uint256 b = a.add(3); // 5 + 3 = 8
  uint256 c = a.mul(2); // 5 * 2 = 10

}

