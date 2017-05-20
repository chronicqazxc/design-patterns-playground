import Foundation

class Door : Fixable {
    
    var status = Status.good
    
    func accept(repair: Repair) {
        repair.visit(door: self)
    }
}
