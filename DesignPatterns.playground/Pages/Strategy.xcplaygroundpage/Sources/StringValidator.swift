import Foundation

public class MyString: Value {

    public private(set) var value: Any
    
    public init(value: String) {
        self.value = value
    }
    
    convenience public init() {
        self.init(value: "")
    }
}

extension MyString: Validatable {
    
    public func validate() -> Bool {
        return true
    }
    
}
