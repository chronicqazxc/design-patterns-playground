import Foundation

public struct RobotFish: Robot {
    public init() { }
    
    public func move(direction: Direction) {
        switch direction {
        case .north:
            print("Fish swim toward North")
        case .south:
            print("Fish swim toward South")
        case .west:
            print("Fish swim toward West")
        case .east:
            print("Fish swim toward East")
        }
    }
    
    public func speak() {
        print("Fish: ...")
    }
}
