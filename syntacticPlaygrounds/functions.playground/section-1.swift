import UIKit

//functions
func sayHello(name:String="WORLD") {
    println("Hey"+name)
}

sayHello(name: "hello")
println(sayHello())


//multiple returns
func multiReturn() -> (String,Int) {
    return ("text",5)
}

multiReturn()
let (a,b) = multiReturn()
println("returned values \(a) and \(b)")


func multiReturnNamed() -> (message:String,code:Int) {
    return ("text",5)
}

multiReturnNamed()
let tuple1 = multiReturnNamed()
println("returned values \(tuple1.message) and \(tuple1.code)")


//closures
let greeting = {
  println("hello")
}

println(greeting())

//closures as parameter
func repeat(count:Int,task:()->()) {
    for i in 0..count {
        task()
    }
}

repeat(2, greeting)
//trailing closure
repeat(2) {
    println("trailing closure")
}

