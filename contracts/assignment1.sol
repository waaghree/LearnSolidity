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