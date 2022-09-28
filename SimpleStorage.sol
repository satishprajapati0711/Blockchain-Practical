pragma solidity ^0.6.0;

contract SimpleStorage {
    //uint256 id = 1;
    //int256 userid = 12;
    //bool status = true;
    //string name = "Satish";
    //address useraddress = 0xe063D887FdCF0b9Fb3C24D9Ff79AEF05b327B469;
    //bytes32 password = "tommy123";

    uint256 number;
    bool status;

    struct People{
        uint256 number;
        string name;
    }

    People[] public people;

    //Mapping
    mapping(string => uint256) public nametoNumber;

    //People public person = People({number:2,name:"Satish"});
   // function takes underscore 
    function store(uint256 _number) public {
        number = _number;
    }

    // function store2(uint256 _number) public {
    //     number = _number;
    // }

    function retrieve() public view returns(uint256){
        return number;
    }

    // function retrieve(uint256 number) public pure{
    //     number + number;
    // }

    function addPerson(string memory _name,uint256 _number) public{
        people.push(People(_number,_name));
        nametoNumber[_name] = _number;
    }

    //   function addPerson(string storage _name,uint256 _number) public{
    //       people.push(People({number:_number,name:_name}));
    //   }

}