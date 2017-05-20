import Foundation

public enum Status: String {
    case good, poor, bad
}

public protocol Repair {
    func visit(wheel: Fixable)
    func visit(door: Fixable)
}
