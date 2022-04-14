//write a jsp to compute the union 
// of two arrays . input array will only have unique
// elements in there respective array.

let arr1 = [1,2,3];
let arr2 = [100,2,1,10]

for(let i =0; i<arr1.length; i++){
    let elementToPut = arr1[i];
    let isPresent=false;
    for(let j=0; j<arr2.length;j++){
        if(elementToPut==arr2[j]){
            isPresent =true;
        }
    }
    if(isPresent==false){
        arr2.push(elementToPut)
    }
}
console.log(arr2);