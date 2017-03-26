import Foundation

public protocol RobotControl {
    var robot: Robot { get }
    
    func moveToNorth()
    func moveToSouth()
    func moveToEast()
    func moveToWest()
}
