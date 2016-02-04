//: Playground - noun: a place where people can play
/*
1.4 Search a Sorted Array for A[i]=i
Suppose that in addition to being sorted, the entries of A are distinct integers. Design an efficient algorithm for finding an index such that A[i]=i or indicating no such index exists.
*/
import UIKit

var str = "Hello, playground"

func search(input:[Int])->Int{
    var tempArr=[Int]()
    for(var i=0;i<input.count;i++){
        tempArr.insert(input[i]-i, atIndex: i)
    }
    var lB=0
    var uB=tempArr.count-1
    while lB<=uB {
        let mid=lB+(uB-lB)/2
        if tempArr[mid]==0{
            return mid;
        }else if tempArr[mid] < 0 {
            lB=mid+1
        }else if tempArr[mid] > 0 {
           uB=mid-1
        }
    }
    return -1;
}
var input=[-3,-1,2,4,6,7,8,9]
var result=search(input)
print("result=\(result)")
