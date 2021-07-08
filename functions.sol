pragma solidity ^0.8.6;

constract ZombieFactory {
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;

  struct Zombie {
    string name;
    uint dna;
  }

  Zombie[] public zombies;

  function _createZombie(string _name, uint _dna) private {
    zombies.push(Zombie(_name, _dna));
  }

  // 関数の戻り値（型指定）
  string greeting = "What's up dog";
  // viewは読み取り専用
  function sayHello() public view returns (string) {
    return greeting;
  }

  // アプリから読むこむことが出来ない
  // パラメータのみに依存する関数
  function _multiply(uint a, uint b) private pure returns (uint) {
    return a * b;
  }

  function _generateRandomDna(string _str) private view returns (uint) {
  }
}
