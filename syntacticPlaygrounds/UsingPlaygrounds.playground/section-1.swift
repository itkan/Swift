import Cocoa
import QuartzCore
import XCPlayground

//Section 1
//use this function when you want to create a custom playground graph of your own.
//func XCPCaptureValue<T>(identifier:String,value:T)
//identifier will denote graph
//value to be added in graph

func meth<T>(data: T[],identifier:String) {
    for x in data {
        XCPCaptureValue(identifier, x)
    }
}

meth([1,4,2,7,42,4,6,4,2,3], "myArray")

meth(["a","f","w","v"],"myStringArray")


//Section 2
//Custom quick look support
//quick look -> in the right pane an eye symbol is seen on hovering
//try hovering on right for below line
var a = [2,3]

//currently quick look supports
// colors - strings - images - bezier paths
//currently works only for NSObject subclass

//lets change the way an array looks

class test:NSObject {
    var data = [2,4,5]
    
    func debugQuickLookObject() -> AnyObject? {
        var resultString:String = ""
        for x in data {
            resultString += String(x) + "--"
        }
        
        return resultString
    }
}

var x = test()


//Section 3
//using playground for creating custom
var ui:NSView = NSView(frame: NSRectFromCGRect(CGRectMake(0, 0, 200, 200)))
ui.wantsLayer = true
XCPShowView("playground", ui)
var newLayer = CAShapeLayer()
newLayer.frame = ui.bounds
newLayer.backgroundColor = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0)
ui.layer.addSublayer(newLayer)
ui

//using below code you can watch live view
XCPShowView("playground", ui)


//Section 4
//asynchronus code in playgrounds
let session = NSURLSession(configuration: NSURLSessionConfiguration.ephemeralSessionConfiguration())
let task = session.dataTaskWithURL(NSURL(string: "http://www.apple.com"))
task.resume()

//this will ensure that execution doesn't stops until the timeline of playground has ended and hence give time to execute the asynchronus process
XCPSetExecutionShouldContinueIndefinitely()


