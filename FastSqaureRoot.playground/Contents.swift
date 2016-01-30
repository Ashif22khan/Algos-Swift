
/*
    implement a fast integer square root function that takes in
    a 32-bit unsigned integer and returns another 32-bit 
    unsigned integer that is the floor of the square root of 
    the input.
*/
import UIKit

func fast_sqrt(input:uint)->uint{
    var first:uint=0
    var last:uint=65536
    while(first+1<last){
        let middle:uint=first+(last-first)/2
        let mid_sqr:uint=middle*middle
        if mid_sqr==input {
            return middle
        }else if mid_sqr > input{
            last=middle
        }else{
            first=middle
        }
    }
    return first
}
let result:uint=fast_sqrt(50000)
var str = "Hello, playground-\(result)"



