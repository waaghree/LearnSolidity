pragma solidity ^0.4.19;
pragma experimental ABIEncoderV2;

contract trial {
  
  struct User {
      string name;
      uint score;
      
  }
  
  //User[] public userArray;
  
  mapping(uint => User[]) userAccess;
  
  
  function setuser(uint level, string name, uint score) public returns(string r_name) {
      User memory newUser;   
      newUser.name = name;
      newUser.score = score;
      
      
      userAccess[level].push(newUser);
      //userArray.push(newUser);
      return newUser.name;
      // myString;
      
  }
  
  function useUser(uint level) public returns(bytes32){
     
      uint256 myLength = userAccess[level].length;
      //userArray[] user1;
      //user1 = userAccess[level];
      //User memory levelUser;
      //levelUser = userAccess[level];
      //return myLength;}
      //bytes32[2][userAccess[level].length] usersInLevel;
      while (userAccess[level].length -- >0) {}
          //for (uint j = 0; j < 2; j++){
            //usersInLevel[user1.length][j]= levelUser[userAccess[level].length][j];
      
      
        //return usersInLevel;
  }
}
/*pragma solidity ^0.4.19;



contract abc {
  
 
  
  struct User {
      bytes32 name;
      uint score;
      
  }
  
      
  
  
  User[] public userArray;
  
  //mapping(uint => User) userAccess;
  
  
  function setuser(string _name, uint _score) public {
      User memory newUser;   
      newUser.name = stringToBytes32(_name);
      newUser.score = _score;
      
      
      //userAccess[level].push(newUser);
      userArray.push(newUser);
      
  }
  
  function stringToBytes32(string memory source) public pure returns (bytes32 result) {
    bytes memory tempEmptyStringTest = bytes(source);
    if (tempEmptyStringTest.length == 0) {
        return 0x0;
    }

    assembly {
        result := mload(add(source, 32))
    }
}
  
  function getUser() view public returns(bytes32[], uint[]){
      //return(userAccess[level]);
      uint length = userArray.length;
      
      bytes32[] memory nameName = new bytes32[](length);
      uint[] memory scoreScore = new uint[](length);
      
      for (uint i = 0; i < userArray.length; i++){
      nameName[i] = userArray[i].name;
      scoreScore[i] = userArray[i].score;

    }
  return (nameName, scoreScore);
  }
     
}
//User memory currentUser;
      //currentUser = userArray[i];
      //nameName[i] = currentUser.name;
      //scoreScore[i] = currentUser.score;  */
      
      /*
      pragma solidity ^0.4.19;



contract abc {
  
 
  
  struct User {
      bytes32 name;
      uint score;
      
  }
  
      
  
  
  //User[] public userArray;
  
  mapping(uint => User[]) userAccess;
  
  
  function setuser(uint _level, string _name, uint _score) public {
      User memory newUser;   
      newUser.name = stringToBytes32(_name);
      newUser.score = _score;
      
      
      userAccess[_level].push(newUser);
      //userArray.push(newUser);
      
  }
  
  function stringToBytes32(string memory source) public pure returns (bytes32 result) {
    bytes memory tempEmptyStringTest = bytes(source);
    if (tempEmptyStringTest.length == 0) {
        return 0x0;
    }

    assembly {
        result := mload(add(source, 32))
    }
}
  
  function getUser(uint _level) view public returns(bytes32[], uint[]){
      //return(userAccess[level]);
      uint length = userAccess[_level].length;
      
      bytes32[] memory nameName = new bytes32[](length);
      uint[] memory scoreScore = new uint[](length);
      
      for (uint i = 0; i < length; i++){
      nameName[i] = userAccess[_level][i].name;
      scoreScore[i] = userAccess[_level][i].score;

    }
  return(nameName, scoreScore);
  
      
      
  }
  

    function getIndUser(uint _level, uint _score) public view returns (bytes32, uint) {
        User[] storage u = userAccess[_level];
        
        for (uint i = 0; i < u.length; i++) {
            if (u[i].score == _score) {
                return (u[i].name, u[i].score);
            }
        }
    }
    
    function getUserByRange(uint _level, uint _score) public view returns (bytes32[], uint[]) {
        User[] storage u = userAccess[_level];
        
        bytes32[] memory b = new bytes32[](u.length);
        uint[] memory ui = new uint[](u.length);
        
        for (uint i = 0; i < u.length; i++) {
            if(u[i].score > _score) {
                b[i] = u[i].name;
                ui[i] = u[i].score;
            }
        } return (b, ui);
    }
 

}
*/

/*
pragma solidity ^0.4.19;



contract abc {
  
 
  
  struct User {
      string name;
      uint score;
      
  }
  
      
  
  
  //User[] public userArray;
  
  mapping(uint => User[]) userAccess;
  
  
  function setuser(uint _level, string _name, uint _score) public {
      User memory newUser;   
      newUser.name = _name;
      newUser.score = _score;
      
      
      userAccess[_level].push(newUser);
      //userArray.push(newUser);
      
  }
  
  /*function stringToBytes32(string memory source) public pure returns (bytes32 result) {
    bytes memory tempEmptyStringTest = bytes(source);
    if (tempEmptyStringTest.length == 0) {
        return 0x0;
    }

    assembly {
        result := mload(add(source, 32))
    }
}*/
  
  /*function getUser(uint _level) view public returns(bytes32[], uint[]){
      //return(userAccess[level]);
      uint length = userAccess[_level].length;
      
      bytes32[] memory nameName = new bytes32[](length);
      uint[] memory scoreScore = new uint[](length);
      
      for (uint i = 0; i < length; i++){
      nameName[i] = userAccess[_level][i].name;
      scoreScore[i] = userAccess[_level][i].score;

    }
  return(nameName, scoreScore);
  
      
      
  }
  

    function getIndUser(uint _level, uint _score) public view returns (bytes32, uint) {
        User[] storage u = userAccess[_level];
        
        for (uint i = 0; i < u.length; i++) {
            if (u[i].score == _score) {
                return (u[i].name, u[i].score);
            }
        }
    }
    
    /*function getUserByRange(uint _level, uint _score) public view returns (bytes32[], uint[]) {
        User[] storage u = userAccess[_level];
        
        bytes32[] memory b = new bytes32[](u.length);
        uint[] memory ui = new uint[](u.length);
        
        for (uint i = 0; i < u.length; i++) {
            if(u[i].score > _score) {
                b[i] = u[i].name;
                ui[i] = u[i].score;
            }
        } return (b, ui);
    }*/
    event logUser(string, uint);
    function getUserByRangelog(uint _level, uint _score) public returns(string, uint) {
        User[] memory u = userAccess[_level];
        
        for (uint i=0;i<u.length;i++) {
            if (u[i].score > _score) {
                emit logUser(u[i].name, u[i].score);
            }
    }
 

}
*/
