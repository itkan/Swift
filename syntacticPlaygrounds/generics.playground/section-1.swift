import UIKit

//generics

//declaring a generic structure
struct Stack<T> {
    var elements = T[]() //declaration of generic array
    
    mutating func push(element:T) { //declaration of generic parameter
        elements.append(element)
    }
    
    mutating func pop() -> T {
        return elements.removeLast()
    }
}

//using generic class for Int
var intStack = Stack<Int>()
intStack.push(50)
intStack
intStack.pop()

//using generic class for String 
var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack
stringStack.pop()
