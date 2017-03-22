// Wayne

import Foundation

public class Lamp: Context {

    private(set) var state: State = Low() {
        didSet {
            stateDescription = "State of the light \(state.description())"
        }
    }
    
    public private(set) var stateDescription: String
    
    public init() {
        stateDescription = state.description()
    }
    
    public func switchLight() {
        action()
    }
    
    func action() {
        state.action(context: self)
    }
    
    func setState(state: State) {
        self.state = state
    }
}
