import UIKit

//like categories
//we can extend anything

//extending structure
struct Size {
    var width, height: Double
}

extension Size {
    mutating func increaseByFactor(factor:Double) {
        width *= factor
        height *= factor
    }
}

var size = Size(width:40.0,height:80)
size.increaseByFactor(10)
size

//extending Int ; it is also a structure
extension Int {
    func repetitions(task:()->()) {
        for i in 0..self {
            task()
        }
    }
}

5.repetitions{
    println("hello!")
}