//write a jsp to compute the union 
// of two arrays . input array will only have unique
// elements in there respective array.

// let arr1 = [1,2,3];
// let arr2 = [100,2,1,10]

// for(let i =0; i<arr1.length; i++){
//     let elementToPut = arr1[i];
//     let isPresent=false;
//     for(let j=0; j<arr2.length;j++){
//         if(elementToPut==arr2[j]){
//             isPresent =true;
//         }
//     }
//     if(isPresent==false){
//         arr2.push(elementToPut)
//     }
// }
// console.log(arr2);

// declare an array

let arr = [];
// 2d array
let b = [[1, 2, 3], [3, 4, 5], [4, 5, 6]]
//print

let a = [1, 2, 3, 4, 5, 6, 7];
// for(let i = 0; i< a.length; i++){
//     console.log(i+ ":" + a[i]);
// }

// methods ->
// add/remove -> at last position

console.log("before", a);
// a.pop(); // remove last
// a.push(10); // add last
console.log("--------------------");

// // add/remove -> at beggining

// a.shift() // remove First
// a.unshift(20) // addFirst
// console.log("after",a);


// copied a subarray -> sIdx , eIdx
// let sliceArray = a.slice(1,4);
// //slice 
// console.log("Sliced array",sliceArray);
// console.log("array", a);

//splice -> sIdx , deleteCount

let splicedArray = a.splice(2, 3);
console.log("spliced array : " , splicedArray);
// elements will be removed from orignal array
console.log("orignalArray: ", a);

//indexof -> idx/-1

let idx = a.indexOf(4);

//includes -> true/false

let ans = a.includes(3);
console.log("4 is " + ans + " at " + idx);
