// function definition

// function name

// function fn(){
//     console.log("I am a function");
//     //optional return type
// }

// let rval = fn();
// WHEN you dont return anything from a fn
// then it will return undefined
// console.log("rval from fn", rval);

function fnWithPar(a,b){
    console.log(a," ",b);
    return "return value";
}

fnWithPar(10,20);

let rVal = fnWithPar("Hello", 20);
console.log(rVal);

//output
// 10   20
// Hello   20
// return value

//ques - 