// Wayne

import Foundation

struct Low: State {
    func action(context: Context) {
        context.setState(state: Middle())
    }
    
    func description() -> String {
        return "Low"
    }
}
