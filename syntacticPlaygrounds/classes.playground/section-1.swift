import UIKit


//no need to inherit from base class
class Vehicle1 {
    
}

//but we can inherit
class Vehicle2: NSObject {
    
}


class Vehicle3 {
    
    //simple propertty
    var numberOfWheels = 0
    
    //computed property
    
    //explicit get
    var description: String {
    get {
        return "\(numberOfWheels) wheels"
    }
    }
    
    //without explicit get
    var description1: String {
        return "\(numberOfWheels) wheels"
    }
}


let someVehicle1 = Vehicle3()

someVehicle1.numberOfWheels
someVehicle1.description
someVehicle1.numberOfWheels = 2
someVehicle1.numberOfWheels


//inheritence
class Bicycle: Vehicle3 {
    init() {
        super.init()
        numberOfWheels = 2
    }
}

let myBicycle = Bicycle()
someVehicle1.description


//override checks that property should exist in parent
class Car:Vehicle3 {
    var speed = 0.0
    init()  {
        super.init()
        numberOfWheels = 4
    }
    
    override var description: String {
        return super.description
    }
    
    override var description1: String {
    return "hello"
    }
}

let myCar = Car()
myCar.description
myCar.speed = 30.0
myCar.description
myCar.description1


//Property Observers

class ParentsCar:Car {
    override var speed:Double {
    willSet {
        if newValue > 40 {
            println(super.description)
        }
    }
    didSet {
        if oldValue < 20 {
            println(super.description1)
        }
    }
    }
}

let myFathersCar = ParentsCar()
myFathersCar.speed = 50.0

//methods
class Scooter:Bicycle {
    var model = "Honda"
    func type() -> String {
        return model
    }
}

let myScooter = Scooter();
myScooter.type()

