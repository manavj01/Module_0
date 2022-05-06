const contacts = [
    {
      firstName: "Akira",
      lastName: "Laine",
      number: "0543236543",
      likes: ["Pizza", "Coding", "Brownie Points"],
    },
    {
      firstName: "Harry",
      lastName: "Potter",
      number: "0994372684",
      likes: ["Hogwarts", "Magic", "Hagrid"],
    },
    {
      firstName: "Sherlock",
      lastName: "Holmes",
      number: "0487345643",
      likes: ["Intriguing Cases", "Violin"],
    },
    {
      firstName: "Kristian",
      lastName: "Vos",
      number: "unknown",
      likes: ["JavaScript", "Gaming", "Foxes"],
    },
  ];
  
  function lookUpProfile(name, prop) {
    for(let i =0; i< contacts.length; i++){
        
        let obj = contacts[i];

        if(obj.firstName==name){
            if(obj[prop] == undefined){
                return "No such property";
            }else{
                return obj[prop];
            }
        }
    }
    return "No such contact";
  
  }
  
 console.log(lookUpProfile("Akira", "likes"));
//   lookUpProfile("Kristian", "lastName");
//   lookUpProfile("Sherlock", "likes");
//   lookUpProfile("Harry", "likes");
//   lookUpProfile("Bob", "number");
//   lookUpProfile("Bob", "potato");
//   lookUpProfile("Akira", "address");
// console.log(contacts[0]);
// console.log(contacts["bob"]);