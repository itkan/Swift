// Playground - noun: a place where people can play

import UIKit

//enumeration
enum Planet:Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

Planet.Earth.toRaw()
Planet.Earth


//custom enumeration
enum ControlCharacter: Character {
    case Tab = "\t"
    case Linefeed = "\n"
    case CarriageReturn = "\r"
}

ControlCharacter.Tab.toRaw()


//Universal truth
enum CompassPoint {
    case North,South,East,West
}

var directionToHead = CompassPoint.West
directionToHead = .East

//let label = UILabel()
//label.textAlignment = .Right

//extended enums
enum TrainStatus {
    case OnTime
    case Delayed(Int)
    
    init() {
        self = OnTime
    }
    
    var description:String {
    switch self {
    case .OnTime:
        return "on time"
    case .Delayed(let minutes):
        return "Delayed by \(minutes) minutes"
        }
    }
}

var status = TrainStatus.OnTime
status.description
status = .Delayed(20)
status.description

TrainStatus().description


//types can be nested in Swift

class Train {
    enum TrainStatus {
        case OnTime
        case Delayed(Int)
        
        init() {
            self = OnTime
        }
        
        var description:String {
        switch self {
        case .OnTime:
            return "on time"
        case .Delayed(let minutes):
            return "Delayed by \(minutes) minutes"
            }
        }
    }
    
    var status = TrainStatus()
}

Train().status.description
