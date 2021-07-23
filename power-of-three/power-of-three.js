/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfThree = function(n) {
    
    let x = 0;

    while ((3**x) <= n) {
        if (3**x === n) {
            return true;
        }
        x += 1;

    }
    return false;
};