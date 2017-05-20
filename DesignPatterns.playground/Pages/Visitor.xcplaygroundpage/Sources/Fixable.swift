import Foundation

public protocol Fixable {
    var status: Status { get set }
    func accept(repair: Repair)
}
