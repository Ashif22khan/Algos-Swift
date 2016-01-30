//: Playground - noun: a place where people can play

import UIKit
func sqrt(t:Double)->Double {
    var r:Double = t/2;
    for ( var i:Int = 0; i < 10; i++ ) {
        r = (r+t/r)/2;
        //let localStr="R-\(r)"
        //print(localStr)
    }
    return r;
}
var result:Double=sqrt(100)
var str = "Hello, playground-\(result)"
