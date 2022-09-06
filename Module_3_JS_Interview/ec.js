// how js code is executed

// whenever a code is executed ->
//  1 ) you will get a "global object"
//  2)  and you get "this"

// Every code in JS is executed in a bubble known as execution context

// there are 3 portions in execution context
// 1) global object
// 2) this
// 3) code

console.log(global);
console.log("--------")
console.log(this);

// The code that is outside any function is in global area 
// for that global execution context is created . 
// it is the default execution context
// It is the first  E.C that is created.

// Next step

// Code -> Memory is allocated -> 
// Code-Execution -> left to right ->top to bottom

// -------------

// console.log("a", a);
// var a;
// a =10;
// console.log("a",a);

// function fn(){
//     console.log("I am a function");
// }
// fn();

// ---------------

// fn();
// function fn(){
//     console.log("I am real");
// }
// function fn(){
//     console.log("No i am real");
// }

// function fn(){
//     console.log("No i am real also");
// }
// fn();

// -------------

// var a =10;

// function fn(){
//     console.log(a);
//     var a =10;
// }
// fn();

//----------------

console.log("37", a);
var a = 10;
function fn() {
    console.log(a);
    var a = 20;
    console.log("43", a);
}
console.log("45", a);
fn();
console.log("47", a);
