
import Cocoa

//simple string
var str = "Hello, playground"

//explicitly declared string
var str1:String = "this is a string variable"
str1 = "yes its variable"

//a constant
let str2 = "constant variable"
//str2 = "hello"   //its a constant cannot be assigned

//concatenation
var str3 = "concatenation of " + str2

//any unicode character can be a variable name
let ™ = 3
var myInt = 20
var myFloat = 3.0

//calculation
var cal1 = 2+4*3-1 + 3.0
var cal2 = ™ + myInt
var cal3 = 3.0 + 20

//var cal4 = myInt + myFloat
var str4 = "\(myFloat) + \(myInt) is error"
var str5 = "\(myInt + ™)"

let components = "~/a/b/c".pathComponents

//array
var arr1 = ["ankit","how","are","you","Hi"]
arr1[0]
arr1 += "new item"
arr1[1...3]

//dictionary
var dict1 = ["keyName":"Ankit","keyMessage":"How are you"]
dict1["keyName"] // accessing value
dict1["newKey"] = "newValue" //adding new key-value
let x = dict1["unknownKey"]

if x == nil {
    println("value is nil1")
}else {
    println("found value1")
}

if x {
    println("value is nil2")
}else {
    println("found value2")
}

for (key,dataVar) in dict1 {
    println("\(key) value is \(dataVar)")
}

for number in 1...5 {
    println("count \(number)")
}

for part in "ankit" {
    println(part)
}

//switch statement
let legCount = 6

switch legCount {
case 0:
    println("its 0")
case 1...3:
    println("its between 1 and 3")
case 4,6:
    println("its 4 or 6")
default:
    println("no match")
}




