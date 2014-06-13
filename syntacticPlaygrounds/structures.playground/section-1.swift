import UIKit

struct Point {
    var x, y: Double
    
    mutating func moveToTheRightBy(dx:Double) {
        x += dx
    }
}

struct Size {
    var width, height: Double
}

struct Rect {
    var origin: Point
    var size: Size
    
    //computed property
    var area:Double {
     return size.width * size.height
    }
    
    func isBiggerThanRect(other:Rect)-> Bool {
        return self.area > other.area
    }
}


//initializers
var point = Point(x:0.0,y:0.0)
var size = Size(width:640.0,height:480)
var rect1 = Rect(origin:point,size:size)
rect1.area
var rect2 = Rect(origin:point,size:Size(width:300.0,height:480))
rect1.isBiggerThanRect(rect2)
point.moveToTheRightBy(20)
point

//classes vs structures
//- structures cannot inherit
//- structures are passed by value