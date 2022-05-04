function decimaltoBinary(dec) {
    let rv = 0;
    let power = 1;

    while (dec > 0) {
        let dig = dec % 2;
        dec = Math.floor( dec / 2);
        rv = rv + dig * power;
        power = power * 10;
    }
    return rv;
}

let binaryNumber = decimaltoBinary(13);
console.log(binaryNumber);