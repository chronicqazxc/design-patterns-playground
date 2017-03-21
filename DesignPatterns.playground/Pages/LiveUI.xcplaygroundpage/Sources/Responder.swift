import Foundation

public typealias ClickBlock = (AnyObject)->()

@objc public class Responder: NSObject {
    let clickBlock: ClickBlock
    
    public init(clickBlock: @escaping ClickBlock) {
        self.clickBlock = clickBlock
    }
    
    public func clicked(sender: AnyObject) {
        self.clickBlock(sender)
    }
}
