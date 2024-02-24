//SPDX
pragma solidity ^0.8.12
contarct product{
    bytes32[] Products;
    bytes32[] Owners;
    bytes32[] Status;

    bytes32[] UserName;
    bytes32[] Password;
    mapping(address=>bool)public
        registeredUsers;
        uint256 public totalRegisteredUsers;

        constructor(){
            totalRegisteredUsers=0;
        }
    
    //funtion for registration customer
    funtion UserReg(bytes32[] UserName,bytes32[] Password){
        require(!registeredUsers[msg.sender],"Already Registered");
        registeredUsers[msg.sender]=true;
        totalRegisteredUsers++;
        

    }
    
}