
// print
console.log("hello");

//declare variables
//java -> statically typed language-> type of variable and val of variable
//dynamically typed language
let a;
//default value is undefined
//integer
a = 10;
a = 10.1;
//boolean
a = true;
//string
a = "hello";
a = 'i am same'
//null
a = null;
console.log(a);

//print 1 to 10
// for (let i = 1; i <= 10; i++) {
//     console.log(i);
// }

//while loop -> print even
// let i=1;

// while(i<=10){
//     if(i%2==0){
//         console.log(i);
//     }

//     i++;
// }



//check from 1 to that endNum(10)
// print fizz if multiple of 3 and
//  buzz if multiple of 5 and 
// fizzbuzz if multiple of both and 
// print the number if multiple of none
// let endNum = 20;
// for (let i = 1; i <= endNum; i++) {
//     if (i % 3 == 0 && i % 5 == 0) {
//         console.log("FizzBuzz");
//     } else if (i % 5 == 0) {
//         console.log("Buzz");
//     } else if (i % 3 == 0) {
//         console.log("Fizz");
//     } else {
//         console.log(i);
//     }
// }


let names = ["manav","manasi","deeje"];
// console.log(names);
// console.log(names[1]);
// console.log(names.length);

for(let idx =0; idx<names.length; idx++){
    console.log(names[idx]);
}

//imp functions
// ********last*********
// //add
// names.push("aman");
// names.push("sunesh");
// console.log(names);
// //remove
// names.pop();
// console.log("------------------------");
// console.log(names);

// **********starting***********
//add
console.log(names);
console.log("-----------------");
names.unshift("bruce");
names.unshift("tony");
console.log(names);
//remove
names.shift();
console.log("------------------");
console.log(names);

//slice and splice

//indexof and includes