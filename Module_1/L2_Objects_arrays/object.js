// console.log("BEFORE"); // prints BEFORE

// function fn(inp) {
//     console.log(inp);
//     return "hello"
// }

// let rval = fn(10); // prints 10, rval = hello (returned from fn)
// console.log(rval); // prints hello as it was returned
// console.log("b/w"); // prints b/w
// fn("hello"); // prints hello but the returned hello was lost
// console.log("AFTER"); // prints AFTER


// // OBJECT - It is non-primitive datatype that is used to represent anything
// // empty object creation

// // let obj = {

// //};
// // collection of key:value pair
// // key : string or number , 
// // value: any valid js datatype "

let cap = {
    firstName: "Steve",
    "last Name": "Rogers",
    friends: ["Tony", "peter", "bruce"],
    address: {
        city: "manhatten",
        state: "NY"
    },
    age: 34,
    isAvenger: true,
}
// //print
// console.log(cap);

// TRAVERSING

for(let key in cap){
    console.log(key," : ",cap[key]);
}


// // get a key"s value using dot notation
// /**
//  *
//  * console.log(cap.firstName);
//    console.log(cap.age);
//    console.log(cap.address.city);
// console.log(cap.friends[1]);

//  */

// // get
// /**
//  *let varName = "firstName";
//   console.log(cap[varName]);

//   varName = "last Name";
//   console.log(cap[varName]);

//   console.log(cap["last Name"]);

//  */



// // delete a key
// delete cap.friends;

// // delete and update

// //add
// cap.movies = ["winter soldier" , "First Avenger" , "Civil War"];
// // let key = "comp"
// // cap[key] = "DCU"
// //update
// cap.isAvenger = false;

// console.log(cap);

// if the key is not present

// console.log(cap.abc);

// Important question
let important_Question_On_Object = "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/record-collection";
 let ans = function updateRecords(records, id, prop, value) {
    if (value == "") {
      delete records[id][prop];
    }
    else if (prop != "tracks" ) {
      records[id][prop] = value;
    } else if (prop == "tracks" && records[id][prop] == undefined ) {
      let newArr = [value];
      records[id][prop] = newArr;
    } else if (prop == "tracks" ) {
      records[id][prop].push(value);
    }
    return records;
  }

// difference b/w dot and Square[]

let obj = {
    name: "jasbir",
    age : 25
}

// console.log(obj.name);
// let key = "name";
// // variable -> value get -> then searching
// console.log(obj[key]);

function getValues(key) {
    // console.log(obj.key);
    console.log(obj[key]);
}

getValues("name");
getValues("age");



// Traversing