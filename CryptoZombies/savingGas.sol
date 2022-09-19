/*
Struct packing to save gas
In Lesson 1, we mentioned that there are other types of uints: uint8, uint16, uint32, etc.

Normally there's no benefit to using these sub-types because Solidity 
reserves 256 bits of storage regardless of the uint size. For example, 
using uint8 instead of uint (uint256) won't save you any gas.

But there's an exception to this: inside structs.

If you have multiple uints inside a struct, using a smaller-sized uint when 
possible will allow Solidity to pack these variables together to take up 
less storage. For example:
*/
struct NormalStruct {
  uint a;
  uint b;
  uint c;
}

struct MiniMe {
  uint32 a;
  uint32 b;
  uint c;
}

// `mini` will cost less gas than `normal` because of struct packing
NormalStruct normal = NormalStruct(10, 20, 30);
MiniMe mini = MiniMe(10, 20, 30); 

/*
You'll also want to cluster identical data types together (i.e. put them next to each other in the struct)
so that Solidity can minimize the required storage space. 
For example, a struct with fields uint c; uint32 a; uint32 b; will cost less gas
than a struct with fields uint32 a; uint c; uint32 b; because the uint32 
fields are clustered together.
*/