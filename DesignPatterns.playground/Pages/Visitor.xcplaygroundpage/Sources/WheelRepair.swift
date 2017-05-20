import Foundation

public class WheelRepair: Repair {
    
    public init() { }
    
    public func visit(wheel: Fixable) {
        
    }
    
    public func visit(door: Fixable) {
        var door = door
        door.status = .good
    }
}
