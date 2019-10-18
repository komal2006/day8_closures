//
//  main.swift
//  day8_closures
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

//closures
//simple example
let divide = {
    (val1: Int, val2: Int) -> Int in
    return val1 / val2
}

let result = divide(10, 2)
print(result)


//expression example
let concatstr = {
    
    (s1: String, s2: String) -> String in
    
   let val = String(format: "%@ %@", s1, s2)
    return val //"\(s1) \(s2)"
}

var myFunc: (String, String) -> String
myFunc = concatstr
let finalResult = myFunc( "Toronto", "City")
print(finalResult)

//single expression implicit
var myArray: [Int] = [5,10,9,56,36]
let sum =  myArray.map
{
    (x) -> Int in
    return x + 1
}
print(sum)

let add = {
    (n1: Int, n2: Int) -> Bool in
    return n1 > n2
}


var desc = myArray.sorted(by: { (n1, n2) -> Bool in
return n1 > n2 //one line
})
print(desc)

var myarray: [String] = ["komal", "charn", "varinder"]
let Desc = myarray.sorted(by: { (n1, n2) -> Bool in
    return n1 > n2 //one line
})
print(Desc)

desc = myArray.sorted(by: add)
print(desc)


 desc = myArray.sorted(by: { (n1, n2)  in
    return n1 > n2 //one line
})
print(desc)


 desc = myArray.sorted(by: {
    return $0 > $1 //one line
})
print(desc)


 desc = myArray.sorted(by: >)
print(desc)
