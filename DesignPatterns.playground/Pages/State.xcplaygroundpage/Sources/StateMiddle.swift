// Wayne

import Foundation

struct Middle: State {
    func action(context: Context) {
        context.setState(state: High())
    }
    
    func description() -> String {
        return "Middle"
    }
}
