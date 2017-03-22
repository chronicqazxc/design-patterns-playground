// Wayne

import Foundation

protocol Context {
    var state: State { get }
    func action()
    func setState(state: State)
}
