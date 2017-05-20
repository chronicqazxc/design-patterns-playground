//: [Previous](@previous)

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

let wheelRepair = WheelRepair()
let doorRepair = DoorRepair()

car.accept(repair: wheelRepair)
car.accept(repair: doorRepair)

print("After repair")
car.status()
print("\n")

//: [Next](@next)
