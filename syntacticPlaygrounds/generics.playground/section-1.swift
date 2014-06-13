import UIKit

//generics

struct Stack<T> {
    var elements = T[]()
    
    mutating func push(element:T) {
        elements.append(element)
    }
    
    mutating func pop() -> T {
        return elements.removeLast()
    }
}

var intStack = Stack<Int>()
intStack.push(50)
intStack
intStack.pop()


var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack
stringStack.pop()
