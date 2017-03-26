import Foundation

public struct RobotCat: Robot {
    public init() { }
    
    public func move(direction: Direction) {
        switch direction {
        case .north:
            print("Cat walk toward North")
        case .south:
            print("Cat walk toward South")
        case .west:
            print("Cat walk toward West")
        case .east:
            print("Cat walk toward East")
        }
    }
    
    public func speak() {
        print("Cat: Meow")
    }
}
