import Foundation

public class MyNumber: Value {
    
    public private(set) var value: Any

    public init(value: Int) {
        self.value = value
    }
    
    convenience public init() {
        self.init(value: 0)
    }
}

extension MyNumber: Validatable {
    
    public func validate() -> Bool {
        return true
    }
    
}
