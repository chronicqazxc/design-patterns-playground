// Wayne

import Foundation

struct High: State {
    func action(context: Context) {
        context.setState(state: Low())
    }
    
    func description() -> String {
        return "High"
    }
}
