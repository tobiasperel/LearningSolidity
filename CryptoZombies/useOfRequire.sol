function sayHiToVitalik(string memory _name) public returns (string memory) {
    // Compares if _name equals "Vitalik". Throws an error and exits if not true.
    // (Side note: Solidity doesn't have native string comparison, so we
    // compare their keccak256 hashes to see if the strings are equal)
    require(
        keccak256(abi.encodePacked(_name)) ==
            keccak256(abi.encodePacked("Vitalik"))
    );
    // If it's true, proceed with the function:
    return "Hi!";
}
