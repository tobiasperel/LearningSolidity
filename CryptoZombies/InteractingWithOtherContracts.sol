//partiendo de este contrato externo
contract LuckyNumber {
  mapping(address => uint) numbers;

  function setNum(uint _num) public {
    numbers[msg.sender] = _num;
  }

  function getNum(address _myAddress) public view returns (uint) {
    return numbers[_myAddress];
  }
}

//creamos una interface para poder interactuar con el contrato externo

contract NumberInterface {
  function getNum(address _myAddress) public view returns (uint);
}
