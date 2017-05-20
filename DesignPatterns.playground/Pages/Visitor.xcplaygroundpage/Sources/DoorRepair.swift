import Foundation

public class DoorRepair: Repair {
    
    public init() { }
    
    public func visit(wheel: Fixable) {
        var wheel = wheel
        wheel.status = .good
    }
    
    public func visit(door: Fixable) {
        
    }
}
