import Foundation

public class FullFunctionsRobotController: RobotControl {
    
    public private(set) var robot: Robot
    
    public init(robot: Robot) {
        self.robot = robot
    }
    
    public func moveToNorth() {
        robot.move(direction: .north)
    }
    
    public func moveToSouth() {
        robot.move(direction: .south)
    }
    
    public func moveToEast() {
        robot.move(direction: .east)
    }
    
    public func moveToWest() {
        robot.move(direction: .west)
    }
    
    public func speak() {
        robot.speak()
    }
}
