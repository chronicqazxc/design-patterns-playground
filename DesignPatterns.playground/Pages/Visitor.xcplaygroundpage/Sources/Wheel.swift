import Foundation

class Wheel : Fixable {
    
    var status = Status.good
    
    func accept(repair: Repair) {
        repair.visit(wheel: self)
    }
}
