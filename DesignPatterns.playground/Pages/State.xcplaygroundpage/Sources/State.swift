// Wayne

import Foundation

protocol State {
    func action(context: Context)
    func description() -> String
}
