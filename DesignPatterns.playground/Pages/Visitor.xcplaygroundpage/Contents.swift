/*:
 [Previous](@previous)
 
 ## Visitor
 
 ### Intent
 *a way of separating an algorithm from an object structure on which it operates*
 
 A practical result of this separation is the ability to add new operations to extant object structures without modifying the structures.
 
 ![Design](Visitor_design_pattern.png)
 
 * Visitor: DoorRepair, WheelRepair
 * Object Struct: Car
 
 */

import Foundation

var car = Car()

var totalRun: UInt = 0 {
    didSet {
        car.run(kilometer: UInt(totalRun))
        print("Run after \(totalRun) km")
        car.status()
        print("\n")
    }
}

print("Get new car")
car.status()
print("\n")

totalRun += 1000
totalRun += 1000
totalRun += 5000

car.accept(repair: WheelRepair())
car.accept(repair: DoorRepair())

print("Repaired")
car.status()
print("\n")

/*:
 [Next](@next)
 - - -
 This article uses material from the Wikipedia article ["Bridge pattern"], which is released under the [Creative Commons Attribution-Share-Alike License 3.0].
 
 ["Visitor pattern"]: https://en.wikipedia.org/wiki/Visitor_pattern "Some hover text"
 [Creative Commons Attribution-Share-Alike License 3.0]: https://creativecommons.org/licenses/by-sa/3.0/ ""
 
 */
